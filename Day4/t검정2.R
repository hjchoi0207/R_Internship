score1 <- read.csv("C:/R/Day4/data/tdata2.csv", header = T, stringsAsFactors = T)
score1
shapiro.test(score1$성적)
#W = 0.96438, p-value = 0.8344 > 0.05보다 높으므로 정규분포를 따른다.

result <- t.test(score1$성적, alternative=c("greater"),mu=75)
result
# p-value = 0.001707 이므로 정규분포를 따르지않고 평균이 75가 아니다 라는 추측측