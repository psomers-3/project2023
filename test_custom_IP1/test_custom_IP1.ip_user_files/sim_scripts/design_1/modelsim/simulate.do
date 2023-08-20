onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L xil_defaultlib -L util_vector_logic_v2_0_2 -L microblaze_v11_0_9 -L lmb_v10_v3_0_12 -L lmb_bram_if_cntlr_v4_0_21 -L blk_mem_gen_v8_4_5 -L axi_lite_ipif_v3_0_4 -L mdm_v3_2_23 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
