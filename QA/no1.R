# 각 교육방식에 대해 분산분석 적용
# 1. 정규분포 검사 :
# 2. 정규분포 결과 : 
# 3. 대립가설
# 4. 검정방법 : N개의 집단을 비교하기에 분산분석 적용
# 5. 결과해석 : p-value = 1.653e-05 < 0.05 대립가설

A <- c(65,87,73,79,81,69,80,77,68,74)
B <- c(75,69,83,81,72,79,90,88,76,82)
C <- c(59,78,67,62,83,76,55,75,49,68)
D <- c(94,89,80,88,90,85,79,93,88,85)

shapiro.test(A) # p-value = 0.9465
shapiro.test(B) # p-value = 0.9553
shapiro.test(C) # p-value = 0.8865
shapiro.test(D) # p-value = 0.6054

mydata <- c(A,B,C,D)
mydata

group <- c(rep(1,10), rep(2,10), rep(3,10),rep(4,10))
group
oneway.test(mydata~group,var=T) #4 그룹의 평균이 같은지 검증증
# p-value = 1.653e-05 < 0.05 대립가설
