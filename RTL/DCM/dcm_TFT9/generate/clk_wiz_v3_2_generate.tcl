package require xilinxSimUtilities 1.0
namespace import ::xilinx::sim::utilities::*

package require xilinxSimGeneration 1.0
namespace import ::xilinx::sim::generation::*

### Custom Generate proc ###
proc generate {} {

   set componentName [getComponentName]
   variable simParameters
   variable preferences
   variable coreName

   message DEBUG "BEGIN SIMPARAMETERS"
   foreach {generic value} [array get simParameters] {
      message DEBUG "$generic=$value"
   }
   message DEBUG "END SIMPARAMETERS"

   message DEBUG "__________________________________________________________________"
   message DEBUG "Generation of the Clocking Wizard"
   message DEBUG "__________________________________________________________________"

   set TopLevel "root"

   createInstantiationTemplate $componentName GenerationOptions "root"

   ## doc files
#   set FileNames [ globInCoreDirectory $componentName doc/*.pdf ] ;#*/
#   deliverFiles $componentName FileNames $componentName/doc/
#   set FileNames [ globInCoreDirectory $componentName doc/*_readme.txt ] ;#*/
#   deliverFiles $componentName FileNames $componentName


   ## EJava needs to know this so that they are included in "fast" tcl generation for planahead
   set GenerationOptions(InstantiationTemplates) {
      "com.xilinx.ip.clk_wiz_v3_2.template_v"
      "com.xilinx.ip.clk_wiz_v3_2.template_vhd"
   }

   ## ejava files
   deliverEJava $componentName GenerationOptions $TopLevel
}
