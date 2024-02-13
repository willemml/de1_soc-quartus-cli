# generate project files
quartus_sh -t setup_project.tcl

# compile project
quartus_map project
quartus_fit project
quartus_asm project

# program
quartus_pgm -m JTAG -o "s;SOCVHPS@1" -o "p;project.sof;5CSEMA5F31@2"
