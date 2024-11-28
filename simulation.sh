#!/bin/bash
. $HOME/.local/Xilinx/14.7/ISE_DS/settings64.sh
PROJECT="Hsata"
fuse -v -intstyle ise -incremental -lib vital -lib fmf -lib unisims_ver -lib unimacro_ver -lib xilinxcorelib_ver \
-o tb_${PROJECT}_isim_beh.exe \
-prj tb_${PROJECT}_beh.prj \
work.tb_${PROJECT}
if [ $? = 0 ]; then
rm -rf output_results.txt
./tb_${PROJECT}_isim_beh.exe -intstyle ise -tclbatch isim_gui.cmd \
-view tb_${PROJECT}.wcfg \
-wdb tb_${PROJECT}_isim_beh.wdb \
-log isim_output.txt
fi
