loans_income <- read.csv("C:/R/표본분포/data/loans_income.csv")[,1] #열 형태로?
samp_data <- data.frame(income=sample(loans_income, 1000),type='data_dist')
str(samp_data)
samp <- data.frame(name=factor(c("kim","choi","choi","lee","kim","lee")),score=
                     c(50,30,10,50,20,30))
tapply(samp$score, samp$name, length)
tapply(samp$score, samp$name, mean)

#samp_data <- data.frame(income=sample(loans_income, 1000), type='data_dist')

samp_mean_05 <- data.frame(
  income = tapply(sample(loans_income, 1000*5),
  rep(1:1000, rep(5,1000),FUN=mean), type='mean_of_5'))

samp_mean_10 <- data.frame(
  income = tapply(sample(loans_income, 1000*10),
  rep(1:1000, rep(10,1000),FUN=mean), type='mean_of_10'))

samp_mean_20 <- data.frame(
  income = tapply(sample(loans_income, 1000*20),
  rep(1:1000, rep(20,1000),FUN=mean), type='mean_of_20'))

income <- rbind(samp_mean_05, samp_mean_10, samp_mean_20)
income$type = factor(income$type, 
                     levels=c('mean_of_5','mean_of_10', 'mean_of_20'),
                     labels = c('Mean of 5','Mean of 10','Mean of 20'))




