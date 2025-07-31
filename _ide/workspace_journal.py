# 2025-07-31T18:08:36.860829
import vitis

client = vitis.create_client()
client.set_workspace(path="vadd")

comp = client.create_hls_component(name = "vadd",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.create_app_component(name="vadd_host",platform = "/opt/xilinx/platforms/xilinx_u50_gen3x16_xdma_5_202210_1/xilinx_u50_gen3x16_xdma_5_202210_1.xpfm")

comp = client.get_component(name="vadd_host")
status = comp.import_files(from_loc="", files=["/home/scrail/changsha/vadd_app/host.cpp"])

proj = client.create_sys_project(name="vadd_proj", platform="/opt/xilinx/platforms/xilinx_u50_gen3x16_xdma_5_202210_1/xilinx_u50_gen3x16_xdma_5_202210_1.xpfm", template="empty_accelerated_application" , build_output_type="xsa")

proj = client.get_sys_project(name="vadd_proj")

status = proj.add_container(name="binary_container_1")

proj = proj.add_component(name="vadd", container_name="binary_container_1")

proj = proj.add_component(name="vadd_host")

client.sync_git_example_repo(name="vitis_libraries")

comp = client.get_component(name="vadd")
comp.run(operation="C_SIMULATION")

comp = client.get_component(name="vadd_host")
comp.build()

comp.build()

comp.build()

proj = proj.add_precompiled_kernel(xo_file_path="/home/scrail/vadd/vadd/vadd/vadd.xo", containers)

