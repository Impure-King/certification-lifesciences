dat <- data(nym.2002, package="UsingR")
dat <- nym.2002

library(dplyr)
male <- dat %>% filter(gender=="Male")
cat(male$age)
cat(cor(male$age, male$time))

female <- dat %>% filter(gender=="Female")
cat(cor(female$age, female$time))
par(mfrow=c(1, 1))
scatter.smooth(dat$age, dat$time)
max(dat$time)/median(dat$time)
