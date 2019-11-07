clear
set more off
set memory 500m
cd "E:\Teaching\Ashoka\MA_EconometricsI\Econometrics stata assignment 1\proc"

* EXTRACT LEVEL 02 DATA

foreach x  in 12 22 32 42 52 62 72 82 {
infile using "E:\Teaching\AUD\MA Econometrics\Econometrics stata assignment 1\dict\level02", using ("E:\Teaching\AUD\MA Econometrics\Econometrics stata assignment 1\raw\AH`x'.txt")
keep if level=="02"
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
sort hh_id
gen common_id =  lot_fsu_number+ hamlet_group_sub_block_no+ second_stage_stratum+ hh_id
order common_id
sort common_id
save level02.dta, replace
erase data12_01.dta



