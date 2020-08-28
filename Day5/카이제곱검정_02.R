raw_data <- c(7,13,9,12,13,21,10,19,11,18,12,13)
data_mtx <- matrix(raw_data, byrow = T,nrow=3)
data_mtx

#열과 행의 이름 지정 : dimnames()
dimnames(data_mtx) <- list("Class" = c("Class1","Class2","Class3"),
                           "Score" = c("ScoreA","ScoreB","ScoreC","ScoreF"))
data_mtx
addmargins(data_mtx) #표에 Sum 추가

addmargins(prop.table(data_mtx))
barplot(t(data_mtx),beside = T, legend=T, ylim = c(0,30)
        ,ylab = "Observed frequencies in sample",
        main = "Frequency of math score by class")

(i.fit <- chisq.test(data_mtx))

# 누적분포 함수를 이용한 p-value 계산
1 - pchisq(q=c(1.3859),df=6,lower.tail = T)
