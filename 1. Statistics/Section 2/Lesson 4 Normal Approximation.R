# Prepping the data:
path <- "C:/Users/Impur/learning-R/1. Statistics/Section 2/data/femaleMiceControl.csv"
x <- unlist( read.csv(path) )

# Checking the histograms:
set.seed(1)
n <- 1000
averages5 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,5)
  averages5[i] <- mean(X)
}

# make averages50
set.seed(1)
n <- 1000
averages50 <- vector("numeric",n)
for(i in 1:n){
  X <- sample(x,50)
  averages50[i] <- mean(X)
}

par(mfrow=c(2, 1))

hist(averages5, main="Average (batch 5)")
hist(averages50, main="Average (batch 50)")

averages