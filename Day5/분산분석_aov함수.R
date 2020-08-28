four_sessions <- read.csv("C:/R/Day5/Day5/data/four_sessions.csv")
head(four_sessions)
summary(aov(Time ~ Page, data = four_sessions))

# Page Df : 자유도 = 표본 - 1 = 4-1 = 3


