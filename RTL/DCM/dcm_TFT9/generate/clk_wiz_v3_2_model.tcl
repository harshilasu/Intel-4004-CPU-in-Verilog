#################################################################
#
#   Initialisation of the core
#
#################################################################
set coreName "clk_wiz_v3_2"
set TopLevel "root"

addCore "clk_wiz_v3_2"
addTopLevel $coreName $TopLevel
# clkout bar parameters
addParameter $coreName $TopLevel  "c_use_clkout1_bar"        "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_clkout2_bar"        "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_clkout3_bar"        "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_clkout4_bar"        "INTEGER" "0"


# generic parameters for clocking network
addParameter $coreName $TopLevel  "c_component_name"          "STRING"  "clk_wiz_v3_2"
addParameter $coreName $TopLevel  "c_platform"                "STRING"  "UNKNOWN"
addParameter $coreName $TopLevel  "c_use_freq_synth"          "INTEGER" "1"
addParameter $coreName $TopLevel  "c_use_phase_alignment"     "INTEGER" "1"
addParameter $coreName $TopLevel  "c_use_min_o_jitter"        "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_max_i_jitter"        "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_dyn_phase_shift"     "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_inclk_switchover"    "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_dyn_reconfig"        "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_spread_spectrum"     "INTEGER" "0"
addParameter $coreName $TopLevel  "c_primtype_sel"            "STRING"  "AUTO"
addParameter $coreName $TopLevel  "c_primitive"               "STRING"  "MMCM_ADV"
addParameter $coreName $TopLevel  "c_use_clk_valid"           "INTEGER" "0"

# input clock behavioral parameters
addParameter $coreName $TopLevel  "c_prim_in_freq"            "STRING"  "100.000"
addParameter $coreName $TopLevel  "c_in_freq_units"           "STRING"  "UNITS_MHZ"
addParameter $coreName $TopLevel  "c_secondary_in_freq"       "STRING"  "100.000"
# input clock topology parameters
addParameter $coreName $TopLevel  "c_feedback_source"         "STRING"  "FDBK_AUTO"
addParameter $coreName $TopLevel  "c_prim_source"             "STRING"  "No_buffer"
addParameter $coreName $TopLevel  "c_secondary_source"        "STRING"  "No_buffer"
addParameter $coreName $TopLevel  "c_clkfb_in_signaling"      "STRING"  "SINGLE"

# optional port parameters
addParameter $coreName $TopLevel  "c_use_reset"                "INTEGER" "1"
addParameter $coreName $TopLevel  "c_use_locked"               "INTEGER" "1"
addParameter $coreName $TopLevel  "c_use_inclk_stopped"        "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_clkfb_stopped"        "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_power_down"           "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_status"               "INTEGER" "0"
addParameter $coreName $TopLevel  "c_use_freeze"               "INTEGER" "0"

# output clocks
addParameter $coreName $TopLevel  "c_num_out_clks"             "INTEGER" "1"
addParameter $coreName $TopLevel  "c_clkout1_drives"           "STRING"  "BUFG"
addParameter $coreName $TopLevel  "c_clkout2_drives"           "STRING"  "BUFG"
addParameter $coreName $TopLevel  "c_clkout3_drives"           "STRING"  "BUFG"
addParameter $coreName $TopLevel  "c_clkout4_drives"           "STRING"  "BUFG"
addParameter $coreName $TopLevel  "c_clkout5_drives"           "STRING"  "BUFG"
addParameter $coreName $TopLevel  "c_clkout6_drives"           "STRING"  "BUFG"
addParameter $coreName $TopLevel  "c_clkout7_drives"           "STRING"  "BUFG"

# notes for code
addParameter $coreName $TopLevel "c_inclk_sum_row0"   "STRING" "Input Clock   Freq (MHz)    Input Jitter (UI)"
addParameter $coreName $TopLevel "c_inclk_sum_row1"   "STRING" "  primary       100.000        0.010"
addParameter $coreName $TopLevel "c_inclk_sum_row2"   "STRING" " secondary      100.000        0.010"
addParameter $coreName $TopLevel "c_outclk_sum_row0a" "STRING" " Output    Output      Phase     Duty      Pk-to-Pk        Phase"
addParameter $coreName $TopLevel "c_outclk_sum_row0b" "STRING" " Clock    Freq (MHz) (degrees) Cycle (%) Jitter (ps)  Error (ps)"
addParameter $coreName $TopLevel "c_outclk_sum_row1"  "STRING" "no CLK_OUT1 output"
addParameter $coreName $TopLevel "c_outclk_sum_row2"  "STRING" "no CLK_OUT2 output"
addParameter $coreName $TopLevel "c_outclk_sum_row3"  "STRING" "no CLK_OUT3 output"
addParameter $coreName $TopLevel "c_outclk_sum_row4"  "STRING" "no CLK_OUT4 output"
addParameter $coreName $TopLevel "c_outclk_sum_row5"  "STRING" "no CLK_OUT5 output"
addParameter $coreName $TopLevel "c_outclk_sum_row6"  "STRING" "no CLK_OUT6 output"
addParameter $coreName $TopLevel "c_outclk_sum_row7"  "STRING" "no CLK_OUT7 output"

# requested values
addParameter $coreName $TopLevel "c_clkout1_requested_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout2_requested_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout3_requested_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout4_requested_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout5_requested_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout6_requested_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout7_requested_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout1_requested_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout2_requested_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout3_requested_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout4_requested_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout5_requested_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout6_requested_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout7_requested_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout1_requested_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout2_requested_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout3_requested_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout4_requested_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout5_requested_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout6_requested_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout7_requested_duty_cycle" "STRING" "50.000"

# actual values
addParameter $coreName $TopLevel "c_clkout1_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout2_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout3_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout4_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout5_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout6_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout7_out_freq"   "STRING" "100.000"
addParameter $coreName $TopLevel "c_clkout1_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout2_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout3_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout4_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout5_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout6_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout7_phase"      "STRING" "0.000"
addParameter $coreName $TopLevel "c_clkout1_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout2_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout3_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout4_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout5_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout6_duty_cycle" "STRING" "50.000"
addParameter $coreName $TopLevel "c_clkout7_duty_cycle" "STRING" "50.000"

# mmcm input attributes
addParameter $coreName $TopLevel "c_mmcm_notes"                "STRING"  "No notes"
addParameter $coreName $TopLevel "c_mmcm_bandwidth"            "STRING"  "OPTIMIZED"
addParameter $coreName $TopLevel "c_mmcm_clkfbout_mult_f"      "STRING"  "1.000"
addParameter $coreName $TopLevel "c_mmcm_clkin1_period"        "STRING"  "1.000"
addParameter $coreName $TopLevel "c_mmcm_clkin2_period"        "STRING"  "1.000"
addParameter $coreName $TopLevel "c_mmcm_clkout4_cascade"      "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_clock_hold"           "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_compensation"         "STRING"  "ZHOLD"
addParameter $coreName $TopLevel "c_mmcm_divclk_divide"        "INTEGER" "1"
addParameter $coreName $TopLevel "c_mmcm_ref_jitter1"          "STRING"  "0.010"
addParameter $coreName $TopLevel "c_mmcm_ref_jitter2"          "STRING"  "0.010"
addParameter $coreName $TopLevel "c_mmcm_startup_wait"         "STRING"  "FALSE"
# mmcm output attributes
addParameter $coreName $TopLevel "c_mmcm_clkout0_divide_f"     "STRING"  "1.000"
addParameter $coreName $TopLevel "c_mmcm_clkout1_divide"       "INTEGER" "1"
addParameter $coreName $TopLevel "c_mmcm_clkout2_divide"       "INTEGER" "1"
addParameter $coreName $TopLevel "c_mmcm_clkout3_divide"       "INTEGER" "1"
addParameter $coreName $TopLevel "c_mmcm_clkout4_divide"       "INTEGER" "1"
addParameter $coreName $TopLevel "c_mmcm_clkout5_divide"       "INTEGER" "1"
addParameter $coreName $TopLevel "c_mmcm_clkout6_divide"       "INTEGER" "1"
addParameter $coreName $TopLevel "c_mmcm_clkout0_duty_cycle"   "STRING"  "0.500"
addParameter $coreName $TopLevel "c_mmcm_clkout1_duty_cycle"   "STRING"  "0.500"
addParameter $coreName $TopLevel "c_mmcm_clkout2_duty_cycle"   "STRING"  "0.500"
addParameter $coreName $TopLevel "c_mmcm_clkout3_duty_cycle"   "STRING"  "0.500"
addParameter $coreName $TopLevel "c_mmcm_clkout4_duty_cycle"   "STRING"  "0.500"
addParameter $coreName $TopLevel "c_mmcm_clkout5_duty_cycle"   "STRING"  "0.500"
addParameter $coreName $TopLevel "c_mmcm_clkout6_duty_cycle"   "STRING"  "0.500"
addParameter $coreName $TopLevel "c_mmcm_clkfbout_phase"       "STRING"  "0.000"
addParameter $coreName $TopLevel "c_mmcm_clkout0_phase"        "STRING"  "0.000"
addParameter $coreName $TopLevel "c_mmcm_clkout1_phase"        "STRING"  "0.000"
addParameter $coreName $TopLevel "c_mmcm_clkout2_phase"        "STRING"  "0.000"
addParameter $coreName $TopLevel "c_mmcm_clkout3_phase"        "STRING"  "0.000"
addParameter $coreName $TopLevel "c_mmcm_clkout4_phase"        "STRING"  "0.000"
addParameter $coreName $TopLevel "c_mmcm_clkout5_phase"        "STRING"  "0.000"
addParameter $coreName $TopLevel "c_mmcm_clkout6_phase"        "STRING"  "0.000"
addParameter $coreName $TopLevel "c_mmcm_clkfbout_use_fine_ps" "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_clkout0_use_fine_ps"  "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_clkout1_use_fine_ps"  "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_clkout2_use_fine_ps"  "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_clkout3_use_fine_ps"  "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_clkout4_use_fine_ps"  "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_clkout5_use_fine_ps"  "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_mmcm_clkout6_use_fine_ps"  "STRING"  "FALSE"

# pll input attributes
addParameter $coreName $TopLevel "c_pll_notes"                  "STRING"  "No notes"
addParameter $coreName $TopLevel "c_pll_bandwidth"              "STRING"  "OPTIMIZED"
addParameter $coreName $TopLevel "c_pll_clk_feedback"           "STRING"  "CLKFBOUT"
addParameter $coreName $TopLevel "c_pll_clkfbout_mult"          "INTEGER" "1"
addParameter $coreName $TopLevel "c_pll_clkin_period"           "STRING"  "1.000"
addParameter $coreName $TopLevel "c_pll_compensation"           "STRING"  "SYSTEM_SYNCHRONOUS"
addParameter $coreName $TopLevel "c_pll_divclk_divide"          "INTEGER" "1"
addParameter $coreName $TopLevel "c_pll_ref_jitter"             "STRING"  "0.010"
# pll output attributes
addParameter $coreName $TopLevel "c_pll_clkout0_divide"         "INTEGER" "1"
addParameter $coreName $TopLevel "c_pll_clkout1_divide"         "INTEGER" "1"
addParameter $coreName $TopLevel "c_pll_clkout2_divide"         "INTEGER" "1"
addParameter $coreName $TopLevel "c_pll_clkout3_divide"         "INTEGER" "1"
addParameter $coreName $TopLevel "c_pll_clkout4_divide"         "INTEGER" "1"
addParameter $coreName $TopLevel "c_pll_clkout5_divide"         "INTEGER" "1"
addParameter $coreName $TopLevel "c_pll_clkout0_duty_cycle"     "STRING"  "0.500"
addParameter $coreName $TopLevel "c_pll_clkout1_duty_cycle"     "STRING"  "0.500"
addParameter $coreName $TopLevel "c_pll_clkout2_duty_cycle"     "STRING"  "0.500"
addParameter $coreName $TopLevel "c_pll_clkout3_duty_cycle"     "STRING"  "0.500"
addParameter $coreName $TopLevel "c_pll_clkout4_duty_cycle"     "STRING"  "0.500"
addParameter $coreName $TopLevel "c_pll_clkout5_duty_cycle"     "STRING"  "0.500"
addParameter $coreName $TopLevel "c_pll_clkfbout_phase"         "STRING"  "0.000"
addParameter $coreName $TopLevel "c_pll_clkout0_phase"          "STRING"  "0.000"
addParameter $coreName $TopLevel "c_pll_clkout1_phase"          "STRING"  "0.000"
addParameter $coreName $TopLevel "c_pll_clkout2_phase"          "STRING"  "0.000"
addParameter $coreName $TopLevel "c_pll_clkout3_phase"          "STRING"  "0.000"
addParameter $coreName $TopLevel "c_pll_clkout4_phase"          "STRING"  "0.000"
addParameter $coreName $TopLevel "c_pll_clkout5_phase"          "STRING"  "0.000"
# dcm attributes
addParameter $coreName $TopLevel "c_dcm_notes"                  "STRING"  "No Notes"
addParameter $coreName $TopLevel "c_dcm_clkdv_divide"           "STRING"  "2.0"
addParameter $coreName $TopLevel "c_dcm_clkfx_divide"           "INTEGER" "1"
addParameter $coreName $TopLevel "c_dcm_clkfx_multiply"         "INTEGER" "4"
addParameter $coreName $TopLevel "c_dcm_clkin_divide_by_2"      "STRING"  "FALSE"
addParameter $coreName $TopLevel "c_dcm_clkin_period"           "STRING"  "10.0"
addParameter $coreName $TopLevel "c_dcm_clkout_phase_shift"     "STRING"  "NONE"
addParameter $coreName $TopLevel "c_dcm_clk_feedback"           "STRING"  "1X"
addParameter $coreName $TopLevel "c_dcm_clk_feedback_port"      "STRING"  "NONE"
addParameter $coreName $TopLevel "c_dcm_deskew_adjust"          "STRING"  "SYSTEM_SYNCHRONOUS"
addParameter $coreName $TopLevel "c_dcm_phase_shift"            "INTEGER" "0"
addParameter $coreName $TopLevel "c_dcm_startup_wait"           "STRING"  "false"
addParameter $coreName $TopLevel "c_dcm_clk_out1_port"          "STRING"  "unused"
addParameter $coreName $TopLevel "c_dcm_clk_out2_port"          "STRING"  "unused"
addParameter $coreName $TopLevel "c_dcm_clk_out3_port"          "STRING"  "unused"
addParameter $coreName $TopLevel "c_dcm_clk_out4_port"          "STRING"  "unused"
addParameter $coreName $TopLevel "c_dcm_clk_out5_port"          "STRING"  "unused"
addParameter $coreName $TopLevel "c_dcm_clk_out6_port"          "STRING"  "unused"
# dcm clkgen params
addParameter $coreName $TopLevel "c_dcm_clkgen_notes"                  "STRING"  "No Notes"
addParameter $coreName $TopLevel "c_dcm_clkgen_clkfxdv_divide"         "STRING"  "2.0"
addParameter $coreName $TopLevel "c_dcm_clkgen_clkfx_divide"           "INTEGER" "1"
addParameter $coreName $TopLevel "c_dcm_clkgen_clkfx_multiply"         "INTEGER" "4"
addParameter $coreName $TopLevel "c_dcm_clkgen_dfs_bandwidth"          "STRING"  "OPTIMIZED"
addParameter $coreName $TopLevel "c_dcm_clkgen_prog_md_bandwidth"      "STRING"  "OPTIMIZED"
addParameter $coreName $TopLevel "c_dcm_clkgen_clkin_period"           "STRING"  "10.0"
addParameter $coreName $TopLevel "c_dcm_clkgen_clkfx_md_max"           "STRING"  "4.0"
addParameter $coreName $TopLevel "c_dcm_clkgen_spread_spectrum"        "STRING"  "NONE"
addParameter $coreName $TopLevel "c_dcm_clkgen_startup_wait"           "STRING"  "false"
addParameter $coreName $TopLevel "c_dcm_clkgen_clk_out1_port"          "STRING"  "unused"
addParameter $coreName $TopLevel "c_dcm_clkgen_clk_out2_port"          "STRING"  "unused"
addParameter $coreName $TopLevel "c_dcm_clkgen_clk_out3_port"          "STRING"  "unused"
addParameter $coreName $TopLevel "c_clock_mgr_type"                    "STRING"  "NA"
addParameter $coreName $TopLevel "c_override_mmcm"                     "INTEGER" "0"
addParameter $coreName $TopLevel "c_override_pll"                      "INTEGER" "0"
addParameter $coreName $TopLevel "c_override_dcm"                      "INTEGER" "0"
addParameter $coreName $TopLevel "c_override_dcm_clkgen"               "INTEGER" "0"
addParameter $coreName $TopLevel "c_dcm_pll_cascade"                   "STRING" "NONE"
addParameter $coreName $TopLevel "c_primary_port"                      "STRING" "CLK_IN1"
addParameter $coreName $TopLevel "c_secondary_port"                    "STRING" "CLK_IN2"
addParameter $coreName $TopLevel "c_clk_out1_port"                     "STRING" "CLKOUT1"
addParameter $coreName $TopLevel "c_clk_out2_port"                     "STRING" "CLKOUT2"
addParameter $coreName $TopLevel "c_clk_out3_port"                     "STRING" "CLKOUT3"
addParameter $coreName $TopLevel "c_clk_out4_port"                     "STRING" "CLKOUT4"
addParameter $coreName $TopLevel "c_clk_out5_port"                     "STRING" "CLKOUT5"
addParameter $coreName $TopLevel "c_clk_out6_port"                     "STRING" "CLKOUT6"
addParameter $coreName $TopLevel "c_clk_out7_port"                     "STRING" "CLKOUT7"
addParameter $coreName $TopLevel "c_reset_port"                        "STRING" "RESET"
addParameter $coreName $TopLevel "c_locked_port"                       "STRING" "LOCKED"
addParameter $coreName $TopLevel "c_clkfb_in_port"                     "STRING" "CLKFB_IN"
addParameter $coreName $TopLevel "c_clkfb_in_p_port"                   "STRING" "CLKFB_IN_P" 
addParameter $coreName $TopLevel "c_clkfb_in_n_port"                   "STRING" "CLKFB_IN_N"
addParameter $coreName $TopLevel "c_clkfb_out_port"                    "STRING" "CLKFB_OUT"
addParameter $coreName $TopLevel "c_clkfb_out_p_port"                  "STRING" "CLKFB_OUT_P"
addParameter $coreName $TopLevel "c_clkfb_out_n_port"                  "STRING" "CLKFB_OUT_N"
addParameter $coreName $TopLevel "c_power_down_port"                   "STRING" "POWER_DOWN"
addParameter $coreName $TopLevel "c_daddr_port"                        "STRING" "DADDR"
addParameter $coreName $TopLevel "c_dclk_port"                         "STRING" "DCLK"
addParameter $coreName $TopLevel "c_drdy_port"                         "STRING" "DRDY"
addParameter $coreName $TopLevel "c_dwe_port"                          "STRING" "DWE"
addParameter $coreName $TopLevel "c_din_port"                          "STRING" "DIN"
addParameter $coreName $TopLevel "c_dout_port"                         "STRING" "DOUT"
addParameter $coreName $TopLevel "c_den_port"                          "STRING" "DEN"
addParameter $coreName $TopLevel "c_psclk_port"                        "SIGNAL" "PSCLK"
addParameter $coreName $TopLevel "c_psen_port"                         "SIGNAL" "PSEN"
addParameter $coreName $TopLevel "c_psincdec_port"                     "SIGNAL" "PSINCDEC"
addParameter $coreName $TopLevel "c_psdone_port"                       "SIGNAL" "PSDONE"
addParameter $coreName $TopLevel "c_clk_valid_port"                    "STRING" "CLK_VALID"
addParameter $coreName $TopLevel "c_status_port"                       "STRING" "STATUS"
addParameter $coreName $TopLevel "c_clk_in_sel_port"                   "STRING" "CLK_IN_SEL"
addParameter $coreName $TopLevel "c_input_clk_stopped_port"            "STRING" "INPUT_CLK_STOPPED"
addParameter $coreName $TopLevel "c_clkfb_stopped_port"                "STRING" "CLKFB_STOPPED"

# other attributes
addParameter $coreName $TopLevel "c_clkin1_jitter_ps"          "STRING"  "100"
addParameter $coreName $TopLevel "c_clkin2_jitter_ps"          "STRING"  "100"

addPort $coreName $TopLevel  "CLK_IN1"           "IN"  "NET"       {SIGNAL_IS {$simParameters(c_primary_source) != "From_differential_clock_capable_pin_IBUFGDS" && $simParameters(c_secondary_source) != "From_differential_non_clock_pin_IBUFDS_BUFG_pair"}}
addPort $coreName $TopLevel  "CLK_IN1_P"         "IN"  "NET"       {SIGNAL_IS {$simParameters(c_primary_source) == "From_differential_clock_capable_pin_IBUFGDS" || $simParameters(c_secondary_source) == "From_differential_non_clock_pin_IBUFDS_BUFG_pair"}}
addPort $coreName $TopLevel  "CLK_IN1_N"         "IN"  "NET"       {SIGNAL_IS {$simParameters(c_primary_source) == "From_differential_clock_capable_pin_IBUFGDS" || $simParameters(c_secondary_source) == "From_differential_non_clock_pin_IBUFDS_BUFG_pair"}}
addPort $coreName $TopLevel  "CLK_IN2"           "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_inclk_switchover) == "1" &&  $simParameters(c_secondary_source) != "From_differential_clock_capable_pin_IBUFGDS" && $simParameters(c_secondary_source) != "From_differential_non_clock_pin_IBUFDS_BUFG_pair"}}
addPort $coreName $TopLevel  "CLK_IN2_P"         "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_inclk_switchover) == "1" &&  {$simParameters(c_secondary_source) == "From_differential_clock_capable_pin_IBUFGDS" || $simParameters(c_secondary_source) == "From_differential_non_clock_pin_IBUFDS_BUFG_pair"}}}
addPort $coreName $TopLevel  "CLK_IN2_N"         "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_inclk_switchover) == "1" &&  {$simParameters(c_secondary_source) == "From_differential_clock_capable_pin_IBUFGDS" || $simParameters(c_secondary_source) == "From_differential_non_clock_pin_IBUFDS_BUFG_pair"}}}
addPort $coreName $TopLevel  "CLK_FB_IN"         "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_phase_alignment) == "1" && $simParameters(c_feedback_source) != "AUTO" && $simParameters(c_clkfb_in_signaling) == "SINGLE"}}
addPort $coreName $TopLevel  "CLK_FB_IN_P"       "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_phase_alignment) == "1" && $simParameters(c_feedback_source) != "AUTO" && $simParameters(c_clkfb_in_signaling) == "DIFF"}}
addPort $coreName $TopLevel  "CLK_FB_IN_N"       "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_phase_alignment) == "1" && $simParameters(c_feedback_source) != "AUTO" && $simParameters(c_clkfb_in_signaling) == "DIFF"}}
addPort $coreName $TopLevel  "DADDR"             "IN"  {BUS  6 0}  {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "virtex6"}}
addPort $coreName $TopLevel  "DCLK"              "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "virtex6"}}
addPort $coreName $TopLevel  "DEN"               "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "virtex6"}}
addPort $coreName $TopLevel  "DIN"               "IN"  {BUS 15 0}  {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "virtex6"}}
addPort $coreName $TopLevel  "DOUT"              "OUT" {BUS 15 0}  {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "virtex6"}}
addPort $coreName $TopLevel  "DRDY"              "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "virtex6"}}
addPort $coreName $TopLevel  "DWE"               "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "virtex6"}}
addPort $coreName $TopLevel  "PROGCLK"           "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "spartan6"}}
addPort $coreName $TopLevel  "PROGDATA"          "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "spartan6"}}
addPort $coreName $TopLevel  "PROGEN"            "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "spartan6"}}
addPort $coreName $TopLevel  "PROGDONE"          "OUT" "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_reconfig) == "1"  && $simParameters(c_family) == "spartan6"}}
addPort $coreName $TopLevel  "PSCLK"             "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_phase_shift) == "1"}}
addPort $coreName $TopLevel  "PSEN"              "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_phase_shift) == "1"}}
addPort $coreName $TopLevel  "PSINCDEC"          "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_phase_shift) == "1"}}
addPort $coreName $TopLevel  "PSDONE"            "OUT" "NET"       {SIGNAL_IS {$simParameters(c_use_dyn_phase_shift) == "1"}}
addPort $coreName $TopLevel  "CLK_OUT1"          "OUT" "NET"       {DEFAULT}
addPort $coreName $TopLevel  "CLK_OUT2"          "OUT" "NET"       {SIGNAL_IS {$simParameters(c_num_out_clks) > 1}}
addPort $coreName $TopLevel  "CLK_OUT3"          "OUT" "NET"       {SIGNAL_IS {$simParameters(c_num_out_clks) > 2}}
addPort $coreName $TopLevel  "CLK_OUT4"          "OUT" "NET"       {SIGNAL_IS {$simParameters(c_num_out_clks) > 3}}
addPort $coreName $TopLevel  "CLK_OUT5"          "OUT" "NET"       {SIGNAL_IS {$simParameters(c_num_out_clks) > 4}}
addPort $coreName $TopLevel  "CLK_OUT6"          "OUT" "NET"       {SIGNAL_IS {$simParameters(c_num_out_clks) > 5}}
addPort $coreName $TopLevel  "CLK_OUT7"          "OUT" "NET"       {SIGNAL_IS {$simParameters(c_num_out_clks) > 6}}
addPort $coreName $TopLevel  "CLKFB_OUT"         "OUT" "NET"       {SIGNAL_IS {$simParameters(c_use_phase_alignment) == "1" && $simParameters(c_feedback_source) != "AUTO"}}
addPort $coreName $TopLevel  "RESET"             "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_reset) == "1"}}
addPort $coreName $TopLevel  "POWER_DOWN"        "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_power_down) == "1"}}
addPort $coreName $TopLevel  "FREEZE"            "IN"  "NET"       {SIGNAL_IS {$simParameters(c_use_freeze) == "1"}}
addPort $coreName $TopLevel  "INPUT_CLK_STOPPED" "OUT" "NET"       {SIGNAL_IS {$simParameters(c_use_inclk_stopped) == "1"}}
addPort $coreName $TopLevel  "CLKFB_STOPPED"     "OUT" "NET"       {SIGNAL_IS {$simParameters(c_use_clkfb_stopped) == "1"}}
addPort $coreName $TopLevel  "LOCKED"            "OUT" "NET"       {SIGNAL_IS {$simParameters(c_use_locked) == "1"}}
addPort $coreName $TopLevel  "STATUS"            "OUT" {BUS 2 0}   {SIGNAL_IS {$simParameters(c_use_status) == "1"}}

addFileName $coreName $TopLevel
addDependencies $coreName $TopLevel


# Source code delivery
#---------------------------------
# clocking network
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.core_v"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.core_vhd"
# implementable example design
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.exdes_v"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.exdes_vhd"
# simulation-only testbench
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.tb_v"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.tb_vhd"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.tb_timing_v"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.tb_timing_vhd"
# template
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.template_v"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.template_vhd"

addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.xmdf_v"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.xmdf_vhd"

# simulation controls
#---------------------------------------------------------------------------
# modelsim simulation control
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.simulate_mti_do"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.simulate_mti_timing_do"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.wave_do"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.wave_timing_do"
# ncsim simulation control
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.simulate_ncsim_sh"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.simulate_ncsim_timing_sh"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.sdf_cmd_file"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.wave_sv"
# isim simulation control
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.simulate_isim_bat"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.simulate_isim_sh"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.simcmds_tcl"
# vcs simulation control
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.simulate_vcs_sh"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.ucli_commands_key"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.vcs_session_tcl"
# implementation controls
#--------------------------------------------------------------------------
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.planAhead_ise_bat"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.planAhead_ise_sh"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.planAhead_ise_tcl"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.planAhead_rdn_bat"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.planAhead_rdn_sh"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.planAhead_rdn_tcl"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.implement_sh"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.implement_bat"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.ucf"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.xdc"
# Synplicity
#--------------------------------------------------------------------------
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.synplify_prj"
# XST
#--------------------------------------------------------------------------
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.xst_prj"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.xst_scr"
#--------------------------------------------------------------------------
# Spyglass files
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.spyglass_sh"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.spyglass_flist"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.spyglass_rule"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.spyglass_waive"
addEJavaFile $coreName $TopLevel "com.xilinx.ip.clk_wiz_v3_2.spyglass_sgdc"

