# 1. 데이터 셋 읽어오기
PSDS_PATH <- file.path('.','source')

std90 <- read.table(file.path(PSDS_PATH,"data/student90.csv"),
                    sep = ",",
                    stringsAsFactors = F,
                    header = T,
                    na.strings = "")


nrow(std90)
head(std90)

# 2 회귀모델 생성
(m <- lm(weight_kg ~ height_cm, data = std90))


# 3. 회귀계수 구하기
coef(m)

#(Intercept)   height_cm 
#32.6604144   0.2246605 


# 4. 회귀 계수 값 검증하기

fitted(m)[1:4]
# 1        2        3        4 
# 77.14319 70.85270 70.85270 77.14319 
((32.6604144) + (0.2246605) * (std90$height_cm[1:4]))
# [1] 77.14319 70.85270 70.85270 77.14319



# 5.잔차 구하기

residuals(m)[1:4]

std90$weight_kg[1:4]

fitted(m)[1:4] + residuals(m)[1:4]

# 6. 잔차 제곱합 구하기

deviance(m)

# 7.회귀계수 신뢰구간 구하기

m_conf <- predict(m,level = 0.95,interval = "confidence")
plot(weight_kg~height_cm, data = std90)
lwr <- m_conf[,2]
upr <- m_conf[,3]
sx <- sort(std90$height_cm, index.return = T)
abline(coef(m),lwd = 2)
lines(sx$x, lwr[sx$ix], col="blue", lty=2)
lines(sx$x, upr[sx$ix], col="blue", lty=2)

# 8. 새로운 학생키(200cm)로 몸무게 에측하기

predict(m,newdata = data.frame(height_cm=200),interval = "confidence")
# fit      lwr      upr
# 1 77.59251 71.61278 83.57225


# 9. 모델 평가하기
summary(m)





