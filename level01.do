clear
set more off
set memory 900m
cd "E:\Teaching\Ashoka\MA_EconometricsI\Econometrics stata assignment 1\proc"

* EXTRACT LEVEL 01 DATA

foreach x  in 12 22 32 42 52 62 72 82 {
infile using "E:\Teaching\AUD\MA Econometrics\Econometrics stata assignment 1\dict\level01", using ("E:\Teaching\AUD\MA Econometrics\Econometrics stata assignment 1\raw\AH`x'.txt")
keep if level=="01"
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

*destring nsc nss multiplier hh_size, replace
*gen weight = multiplier/100 if nss == nsc
*replace weight = multiplier/200 if nss != nsc
*gen tot_hh_size = weight * hh_size 
*egen tot_pop = sum(tot_hh_size) /* for all */
*bysort sector : egen pop = sum(tot_hh_size) /* for rural and urban */
*format pop %20.0g
*format tot_pop %20.0g

order common_id
sort common_id
save level01.dta, replace
erase data12_01.dta


