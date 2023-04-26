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

### Question 2:
less25 <- averages50 < 25
greater23 <- averages50 > 23

total_mat <- greater23 == less25
print(mean(total_mat))

### Question 3:
lower_array <- pnorm(23, 23.9, 0.43)
upper_array <- pnorm(25, 23.9, 0.43)
