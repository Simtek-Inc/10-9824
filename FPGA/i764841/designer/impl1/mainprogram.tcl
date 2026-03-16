# Created by Microsemi Libero Software 11.9.2.1
# Mon Mar 16 14:49:29 2026

# (OPEN DESIGN)

open_design "mainprogram.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "mainprogram_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\_swork\10-\9800\9824\FPGA\i764841\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VHDL" {../../synthesis/mainprogram.edn} -merge_physical "yes" -merge_timing "yes"
compile
report -type "status" {mainprogram_compile_report.txt}
report -type "pin" -listby "name" {mainprogram_report_pin_byname.txt}
report -type "pin" -listby "number" {mainprogram_report_pin_bynumber.txt}

save_design
