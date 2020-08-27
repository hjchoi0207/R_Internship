height <- rnorm(n=1000000,mean=168,sd=7) #평균을 168, 표준편차를 7로 난수발생
hist(height, breaks=10, probability = T)
hist(height, breaks=100, probability = T)
hist(height, breaks=1000, probability = T)
