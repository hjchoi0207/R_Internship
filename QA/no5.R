# 공장에서 온도에 따라 테스트한 결과과
# 분산분석 : oneway.test

# 1. 모두 0.05이상이기에 정규분포를 따른다.
# 2. p-value = 2.581e-09 < 0.05 대립가설
# 3. 각 테스트 케이스를 비교하기때문에 분산분석 적용
# 

t1 <- c(23,27,24,25,29,30,26)
t2 <- c(35,32,38,36,32,33,34)
t3 <- c(36,41,38,39,40,38,39)
t4 <- c(32,30,37,34,35,34,32)

shapiro.test(t1) # p-value = 0.8366
shapiro.test(t2) # p-value = 0.5554
shapiro.test(t3) # p-value = 0.8766
shapiro.test(t4) # p-value = 0.9147

mydata <- c(t1,t2,t3,t4)
group <- c(rep(1,7),rep(2,7),rep(3,7),rep(4,7))
oneway.test(mydata~group,var = T) # p-value = 2.581e-09 < 0.05 대립가설
