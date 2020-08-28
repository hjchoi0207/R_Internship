house <- read.csv(("C:/R/Day5/Day5/data/house_sales.csv"),sep = '\t')
head(house[, c("AdjSalePrice", "SqFtTotLiving", "SqFtLot", "Bathrooms",
               "Bedrooms", "BldgGrade")])

house_lm <- lm(AdjSalePrice ~ SqFtTotLiving + SqFtLot + Bathrooms + 
                 Bedrooms + BldgGrade, data = house, na.action = na.omit)
house_lm

summary(house_lm)

######################################
data(mtcars)
head(mtcars)
fit_02=lm(formula = mpg~hp*wt, data=mtcars)
summary(fit_02)

plot(mpg~hp, data = mtcars, main= "Interaction of hp:wt")
