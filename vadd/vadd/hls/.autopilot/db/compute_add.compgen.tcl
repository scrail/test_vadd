# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name in1_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in1_stream \
    op interface \
    ports { in1_stream_dout { I 32 vector } in1_stream_empty_n { I 1 bit } in1_stream_read { O 1 bit } in1_stream_num_data_valid { I 3 vector } in1_stream_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name in2_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in2_stream \
    op interface \
    ports { in2_stream_dout { I 32 vector } in2_stream_empty_n { I 1 bit } in2_stream_read { O 1 bit } in2_stream_num_data_valid { I 3 vector } in2_stream_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name out_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_stream \
    op interface \
    ports { out_stream_din { O 32 vector } out_stream_full_n { I 1 bit } out_stream_write { O 1 bit } out_stream_num_data_valid { I 3 vector } out_stream_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name size \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_size \
    op interface \
    ports { size_dout { I 32 vector } size_empty_n { I 1 bit } size_read { O 1 bit } size_num_data_valid { I 3 vector } size_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name size_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_size_c \
    op interface \
    ports { size_c_din { O 32 vector } size_c_full_n { I 1 bit } size_c_write { O 1 bit } size_c_num_data_valid { I 3 vector } size_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


