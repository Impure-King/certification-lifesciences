###-------------------------------------------------------------------------------
library(UsingR)
dat <- exec.pay

### Checking distribution~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
par(mfrow=c(2, 1))
hist(dat)
qqnorm(dat)
qqline(dat)


### Creating a box plot~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
par(mfrow = c(1,1))
boxplot(dat, ylab="dollars (thousands in scale)", ylim=c(0, 400))
print(mean(dat)); print(median(dat))


###------------------------------------------------------------------------------------------
library(dplyr)
dat <- InsectSprays
head(dat)
spray_A <- filter(dat, spray=="A")
spray_B <- filter(dat, spray=="B")
spray_C <- filter(dat, spray=="C")
spray_D <- filter(dat, spray=="D")
spray_E <- filter(dat, spray=="E")
spray_F <- filter(dat, spray=="F")


median(spray_A[,1])
median(spray_B[,1])
median(spray_C[,1])
median(spray_D[,1])
median(spray_E[,1])
median(spray_F[,1])

par(mfrow=c(3,2))
boxplot(spray_A[, 1], main="A")
boxplot(spray_B[, 1], main="B")
boxplot(spray_C[,1], main="C")
boxplot(spray_D[,1], main="D")
boxplot(spray_E[,1], main="E")
boxplot(spray_F[,1], main="F")

###----------------------------------------------------------------------------
library(dplyr)
data(nym.2002, package="UsingR")
dat <- nym.2002
dat
male_dat <- filter(dat, gender=="Male")
female_dat <- filter(dat, gender=="Female")

par(mfrow=c(2, 1))
hist(male_dat$time, xlab="Time", main="Men")
hist(female_dat$time, xlab="Time", main="Female")
boxplot(male_dat$time)
boxplot(female_dat$time)
mean(male_dat$time)
mean(female_dat$time)
