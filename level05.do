clear
set more off
set memory 500m
cd "E:\Teaching\Ashoka\MA_EconometricsI\Econometrics stata assignment 1\proc"

* EXTRACT LEVEL 05 DATA

foreach x  in 12 22 32 42 52 62 72 82 {
infile using "E:\Teaching\AUD\MA Econometrics\Econometrics stata assignment 1\dict\level05", using ("E:\Teaching\AUD\MA Econometrics\Econometrics stata assignment 1\raw\AH`x'.txt")
keep if level=="05"
compress
save data`x'_01.dta, replace
clear
}


clear
use data12_01.dta, clear
foreach x  in  22 32 42 52 62 72 82 {
append using data`x'_01.dta
erase data`x'_01.dta
}
gen common_id =  lot_fsu_number+ hamlet_group_sub_block_no+ second_stage_stratum+ hh_id
order common_id
sort common_id
save level05.dta, replace
erase data12_01.dta



