x1 <- c(100,90,98,79,81,69,80,77,68,74)
x2 <- c(5,4,4,3,4,3,4,3,2,3)
x3 <- c(4,3,3,2,3,2,3,3,2,3)
x4 <- c(5,3,3,2,3,3,4,3,2,3)
mydata <- data.frame(y=x1, s1=x2, s2=x3, s3 = x4)
mydata

model <- lm(y~.,data = mydata)
summary(model) # Adjusted R-squared:  0.7307 : 73%의 신뢰도를 가진다.
#