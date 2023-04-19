# Loading the dataset:
file_path <- "~/GitHub/certification-lifesciences/1. Statistics/Section 2/data/femaleMiceControl.csv"
dat <- read.csv(file_path)
x <- unlist(dat)

n <- 1000

averages5 <- vector(mode="numeric", n)
set.seed(1)
for (i in 1:n){
  averages5[i] <- mean(sample(x, 5))
}


averages50 <- vector(mode="numeric", n)
set.seed(1)
for (i in 1:n){
  averages50[i] <- mean(sample(x, 50))
}

par(mfrow=c(2, 1))
hist(averages5)
hist(averages50)
