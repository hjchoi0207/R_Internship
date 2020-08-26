#install.packages("gapminder")
library(gapminder)
gapminder[gapminder$country == 'Korea, Rep.',]
gapminder[,c('year', 'lifeExp', 'gdpPercap')]
#gapminder[gapminder$country=="Korea, Rep." & gapminder$year>=1990,c("lifeExp","pop")]
#gapminder[gapminder$country=="Korea, Dem. Rep." & gapminder$year>=1990,c("lifeExp","pop")]


