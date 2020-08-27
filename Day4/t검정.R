score1 <- read.csv("C:/R/Day4/data/tdata.csv", header = T, stringsAsFactors = T)
score1
shapiro.test(score1$성적)

result <- t.test(score1$성적,alternative=c("greater"),mu=75)
result
