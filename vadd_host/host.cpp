#include <iostream>
#include <vector>
#include <string>

// XRT公共头文件
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"
#include "xrt/xrt_bo.h"

// 和你的HLS代码保持一致
#define DATA_SIZE 1

int main(int argc, char** argv) {
    // --- 1. 命令行解析和初始化 ---
    if (argc < 2) {
        std::cout << "Usage: " << argv[0] << " <xclbin_file>" << std::endl;
        return EXIT_FAILURE;
    }
    std::string binaryFile = argv[1];

    // --- 2. 打开设备，加载.xclbin文件，获取内核 ---
    std::cout << "Loading " << binaryFile << std::endl;
    auto device = xrt::device(0); // 获取第一个FPGA设备
    auto uuid = device.load_xclbin(binaryFile);
    auto krnl = xrt::kernel(device, uuid, "vadd"); // 内核名 "vadd" 必须和 HLS 函数名一致

    // --- 3. 分配主机和设备侧的内存 ---
    size_t buffer_size_in_bytes = DATA_SIZE * sizeof(int);

    // 在FPGA的全局内存(DDR/HBM)上分配Buffer Object (BO)
    // kernel.group_id(0) 对应 HLS 代码中的 in1 (第一个参数)
    auto bo_in1 = xrt::bo(device, buffer_size_in_bytes, krnl.group_id(0));
    auto bo_in2 = xrt::bo(device, buffer_size_in_bytes, krnl.group_id(1));
    auto bo_out = xrt::bo(device, buffer_size_in_bytes, krnl.group_id(2));

    // 在主机侧创建数据容器并填充测试数据
    std::vector<int> host_in1(DATA_SIZE);
    std::vector<int> host_in2(DATA_SIZE);
    std::vector<int> host_out(DATA_SIZE);

    for (int i = 0; i < DATA_SIZE; ++i) {
        host_in1[i] = i;
        host_in2[i] = i * 2;
    }

    // --- 4. 数据传输：主机 -> FPGA ---
    std::cout << "Transferring data from host to device..." << std::endl;
    bo_in1.write(host_in1.data());
    bo_in2.write(host_in2.data());

    // 同步数据到设备
    bo_in1.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    bo_in2.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    // --- 5. 执行内核 ---
    std::cout << "Executing kernel..." << std::endl;
    auto run = krnl(bo_in1, bo_in2, bo_out, DATA_SIZE); // 按HLS函数签名顺序传入参数
    run.wait();
    std::cout << "Kernel execution finished." << std::endl;

    // --- 6. 数据传输：FPGA -> 主机 ---
    std::cout << "Transferring data from device to host..." << std::endl;
    bo_out.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    bo_out.read(host_out.data());

    // --- 7. 结果验证 ---
    bool match = true;
    for (int i = 0; i < DATA_SIZE; i++) {
        int expected = host_in1[i] + host_in2[i];
        if (host_out[i] != expected) {
            std::cout << "ERROR: Result mismatch at index " << i
                      << ", host_out[" << i << "] = " << host_out[i]
                      << ", expected = " << expected << std::endl;
            match = false;
            break;
        }
    }

    std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl;

    return (match ? EXIT_SUCCESS : EXIT_FAILURE);
}