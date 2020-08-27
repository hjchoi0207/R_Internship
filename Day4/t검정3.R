x <- c(15,10,13,7,9,8,21,9,14,8)
y <- c(15,14,12,8,01,7,16,10,15,12)
shapiro.test(x) # p-value = 0.09131
shapiro.test(y) # p-value = 0.231

t.test(x,y) # p-value = 0.8 > 0.5 이므로 귀무가설


x <- c(52,60,63,43,46,56,62,50)
y <- c(58,62,62,48,50,55,68,57)
shapiro.test(x) # p-value = 0.6037
shapiro.test(y) # p-value = 0.9042
t.test(x,y,paired = T) # x와 y를 대응시킨다  p-value = 0.0166 < 0.5 이므로 대립가설
