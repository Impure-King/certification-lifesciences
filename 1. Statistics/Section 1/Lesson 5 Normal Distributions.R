library(UsingR)

dat <- father.son$fheight
x <- dat

# Computing the mean and standard Deviation of dataset:

print(mean(dat))
print(sd(dat))

# Trying basic normal approximation:

print(dat > 70)
print(mean(dat > 70))
1 - pnorm(70, mean(x), sd(x))


# Creating a qq plot:

ps <- seq(0.01, 0.99, 0.01)
qs <- quantile(x, ps) # Calculating the quantiles

# Creating a similar normal distribution based on mean and SD.
normalqs <- qnorm(ps, mean(x), sd(x))

# plotting to compare if it is close to x = y

plot(normalqs, qs, xlab="Normal Percentiles", ylab="Height percentile")
lines(qs, qs)


## Automating using qqnorm and qqline:

qqnorm(x)
qqline(x)


##### Homework Problems ######

# Loading Data:
url <- "~/GitHub/certification-lifesciences/1. Statistics/Section 1/data/skew.RData"
load(url)

dim(dat)

# Changing the graph view:
par(mfrow=c(3, 3))


for (i in seq(1, 9)){
  curr <- dat[, i]
  qqnorm(curr)
  qqline(curr)
}

# changing it back:
par(mfrow=c(2, 1))

# Checking the graphs again
for (i in c(4, 9)){
  curr <- dat[, i]
  qqnorm(curr)
  qqline(curr)
}
par(mfrow=c(1, 1))

# Graphing an histograph:
hist(dat[,4], main="Positively skewed")


# Graphing the last

hist(dat[, 9], main="Negatively skewed")