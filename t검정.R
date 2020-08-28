data1 <- c(30,-5,55,-30,-20,45)
data2 <- c(12,13,12,13,12,13)
data3 <- c(30,-5,55,-30,-20,45,30,-5,55,-30,-20,45)

t.test(data1, alternative = c("greater")) # p-value = 0.2145
t.test(data2, alternative = c("greater")) # p-value = 1.732e-08
t.test(data3, alternative = c("greater")) # p-value = 0.1142

# data 1,2,3 모두 평균은 12.5이지만 유의지수로 판단했을 때
# data2만이 대립가설을 채택할 수 있다.