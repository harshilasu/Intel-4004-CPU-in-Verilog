package require cmdline
package require xilinxTGI 1.0
package require xilinxGeneratorUtils 1.0
package require xilinxSimUtilities 1.0
namespace import ::xilinx::sim::utilities::*


proc main { argc argv } {
   # Direct messages to the TGI method (otherwise they won't appear in the coregen # console using this flow).
   namespace import -force ::xilinx::TGI::message

   # Parse the contents of argv into an array called 'parameters'
   set options {
      {componentInstanceID.arg ""    "Element ID to generate"}
      {verbose                       "Enable verbose messaging"}      
   }
   set usage ": run_legacy_flow.tcl \[options]...\noptions:"
   array set parameters [::cmdline::getoptions argv $options $usage]
   
   # Ensure that the componentInstanceID has been specified in the array 'parameters'
   if { $parameters(componentInstanceID) eq "" } {
      message ERROR "Missing required parameter: -componentInstanceID"
      return $::xilinx::coreu::ERROR
   }
   
   # Unset argc/argv to prevent execution of generate (contents of if {[info exists argc]} {...}) while sourcing Generate.tcl
   unset argc argv
   set coregen_area [regsub -all {/pkgIndex.tcl} [findRtfPath "coregen/pkgIndex.tcl"] ""]
   source [file join $coregen_area tcl Generate.tcl]

   # Generate the customized core ...
   set genResult [::xilinx::sim::generation::generateCore3rdParty $parameters(componentInstanceID)]
   # map empty return value to OK result
   set returnValue $::xilinx::coreu::ERROR
   if { $genResult != "" } {
      message DEBUG "returning(OK) $::xilinx::coreu::OK"
      set returnValue $::xilinx::coreu::OK
   } else {
      message DEBUG "returning(ERROR) $::xilinx::coreu::ERROR"
      puts "Kapil";
      puts $genResult;
   }
   namespace import -force ::xilinx::TGI::message
   return $returnValue
}

return [main $argc $argv]

