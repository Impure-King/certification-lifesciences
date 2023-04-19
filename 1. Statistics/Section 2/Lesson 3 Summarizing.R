library(gapminder)
data(gapminder)
head(gapminder)
dat <- gapminder
hist(dat$lifeExp)

# Question 1:
library(dplyr)
life_1952 <- filter(dat, year=="1952") %>% select(lifeExp)
mean(life_1952 <= 40)

x <- unlist(life_1952)
# Creating a new plotting:
prop = function(q) {
  mean(x <= q)
}
qs = seq(from=min(x), to=max(x), length=20)
props = sapply(qs, prop)
plot(qs, props)

plot(ecdf(x))
