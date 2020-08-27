x <- c(1.09,2.12,2.92,4.06,4.90)
y <- c(1,2,3,4,5)
z <- c(1.10,1.96,3.98,4.09,4.92)
shapiro.test(x) # p-value = 0.9489
shapiro.test(y) # p-value = 0.9672
shapiro.test(z) # p-value = 0.4348

mydata <- c(x,y,z)
mydata

group <- c(rep(1,5),rep(2,5),rep(3,5)) # 1,2,3을 각각 5번씩 반복
group

oneway.test(mydata~group, var = T) # mydata를 3그룹 지어 평균이 같은지 검증

