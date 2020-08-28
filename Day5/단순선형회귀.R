lung <- read.csv("C:/R/Day5/Day5/data/LungDisease.csv")
plot(lung$Exposure,lung$PEFR,xlab = "Exposure", ylab="PEER")

model <- lm(PEFR ~ Exposure, data = lung)
model
lm (formula = PEFR ~ Exposure, data = lung)

##############################
head(cars)
attach(cars)
plot(dist~speed,data = cars)

m3 <- lm(dist~speed, cars)
abline(m3, col= "red")
yhat <- predict(m3) # lm결과를 예측
cbind(dist,yhat)

join <- function(i)
  lines(c(speed[i],speed[i]),c(dist[i],yhat[i]),col = "green")

sapply(1:50,join)

###############################
model <- lm(PEFR ~ Exposure, data = lung) # 절편 :424.583 기울기 :-4.185 
fitted <- predict(model) # 예측 값
resid <- residuals(model)# 잔차
plot(lung$Exposure,lung$PEFR, xlab = "Exposure", ylab="PEER", pch = 20,col="red")
abline(model,col="blue")

attach(lung) ; head(lung) ; str(lung)

yhat <- predict(model)
head(yhat)
cbind(Exposure,yhat)

join <- function(i)
  lines(c(Exposure[i],Exposure[i]),c(PEFR[i],yhat[i]),col = "green")
sapply(1:122,join)


###############################





