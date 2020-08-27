score <- read.csv("C:/R/Day4/data/score.txt", header = T, sep=",")
attach(score)

lm1 <- lm(성적~IQ)
lm1

y <- -5.292 + 0.6771 * 125
y
plot(IQ,성적,pch=20,col="red")
abline(lm1,col="blue")
