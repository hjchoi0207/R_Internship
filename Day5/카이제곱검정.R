click_rate <- read.csv("C:/R/Day5/Day5/data/click_rates.csv")
clicks <- matrix(click_rate$Rate, nrow =3, ncol=2, byrow= T)
head(clicks)
chisq.test(clicks, simulate.p.value=T) # p-value = 0.5027 귀무채택
# chisq.test()함수를 이용한 카이제곱검정

