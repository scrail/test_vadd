set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME vadd_entry_proc}
  {SRCNAME load_data MODELNAME load_data RTLNAME vadd_load_data}
  {SRCNAME load_data.1 MODELNAME load_data_1 RTLNAME vadd_load_data_1}
  {SRCNAME compute_add MODELNAME compute_add RTLNAME vadd_compute_add}
  {SRCNAME store_data MODELNAME store_data RTLNAME vadd_store_data}
  {SRCNAME vadd MODELNAME vadd RTLNAME vadd IS_TOP 1
    SUBMODULES {
      {MODELNAME vadd_fifo_w64_d4_S RTLNAME vadd_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_r_c_U}
      {MODELNAME vadd_fifo_w32_d2_S RTLNAME vadd_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in1_stream_U}
      {MODELNAME vadd_fifo_w32_d2_S RTLNAME vadd_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME size_c1_U}
      {MODELNAME vadd_fifo_w32_d2_S RTLNAME vadd_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME in2_stream_U}
      {MODELNAME vadd_fifo_w32_d2_S RTLNAME vadd_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_stream_U}
      {MODELNAME vadd_fifo_w32_d2_S RTLNAME vadd_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME size_c_U}
      {MODELNAME vadd_start_for_store_data_U0 RTLNAME vadd_start_for_store_data_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_store_data_U0_U}
      {MODELNAME vadd_start_for_compute_add_U0 RTLNAME vadd_start_for_compute_add_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_compute_add_U0_U}
      {MODELNAME vadd_gmem0_m_axi RTLNAME vadd_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vadd_gmem1_m_axi RTLNAME vadd_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vadd_control_s_axi RTLNAME vadd_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
