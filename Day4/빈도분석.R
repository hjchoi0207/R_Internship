fruits1 <- read.csv("C:/R/Day4/data/love_fruits.csv", header = T)
head(fruits1)
prop.table(table(fruits1$선호과일))

round(prop.table(table(fruits1$선호과일))*100,2)

# prop.table 빈도계산
# table 중복부분 집계
# round 반올림 소수점

table(fruits1$선호과일)
count <- c(table(fruits1$선호과일))
pct <- c(round(prop.table(table(fruits1$선호과일))*100,2))
love_fruits <- data.frame(건수=count,비율=pct)
love_fruits

barplot(love_fruits$건수, names.arg = c("바나나","복숭아","사과","체리","포도"), ylim = c(0,15),col = rainbow(5))
