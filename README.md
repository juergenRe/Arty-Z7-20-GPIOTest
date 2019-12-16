# Arty Z7-20 GPIO Test
- 4bit output to LED
- 4bit input from buttons
- interrupt
Created for Vivado 2017.4

# Creating script for regenerating project
TCL command (from project root): 
	write_project_tcl -paths_relative_to [pwd] -force ./proj/mk_project.tcl
correct path in generated script:
	set_property -name "ip_output_repo" -value "$origin_dir/repo/cache" -objects $obj
	
# Recreating project at another place
TCL command (from project root)
source ./proj/mk_project -tclargs --origin_dir "."

