
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name CPU -dir "C:/Users/Kyle/Desktop/CPU/SYN/planAhead_run_1" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Kyle/Desktop/CPU/SYN/fpga_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Kyle/Desktop/CPU/SYN} }
set_property target_constrs_file "fpga_top.ucf" [current_fileset -constrset]
add_files [list {fpga_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
