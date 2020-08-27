x <- c(110,120,130,140,150)
y <- c(100,105,128,115,142)
plot(x,y,pch=20,col="red")
line <- lm(y~x)
line
abline(line, col = "blue")
