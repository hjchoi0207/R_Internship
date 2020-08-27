library(boot)
loans_income <- read.csv("C:/R/표본분포/data/loans_income.csv")[,1]
stat_fun <- function(x,idx) median(x[idx])
boot_obj <- boot(loans_income, R = 1000, statistic = stat_fun)

boot_obj
