library(dplyr)
path <- "~/GitHub/certification-lifesciences/Book/data/femaleControlsPopulation.csv"
dat <- read.csv(path)
dat <- dat %>% unlist()
# Setting the random seed:
set.seed(1)

# Problem 1 - What is the average of these weights?
cat(mean(dat)) # 23.89338

# Problem 2 - Take a random sample of size 5. What is the absolute value of the difference between the average of the sample and the average of all the values?
sample_dat <- sample(dat, size=5)
cat(abs(mean(dat) - mean(sample_dat))) # 0.3293778

# Problem 3 - After setting the seed to 5, take a random sample of size 5, what is the absolute value of the difference between the average of the sample and the average of the population?
set.seed(5)
sample_dat <- sample(dat, size=5)
cat(abs(mean(dat) - mean(sample_dat))) # 0.3813778

# Problem 4 - Why are the answers from 2 and 3 different?

# The answers are different because the average of a sample is an random variable.

# Problem 5 - Set the seed at 1, then using a for-lop take a random sample of 5 mince 1,000 times. What percent of these 1,000 averages are more than 1 ounce away from the average of population?

set.seed(1)
n <- 1000
obs_diff <- vector("numeric", n)

sample_avg <- function(dat) {
  rand_sample <- sample(dat, 5)
  return(abs(mean(dat) - mean(rand_sample)))
}

for (i in seq(1, n)) {
  obs_diff[i] = sample_avg(dat)
}
cat(mean(obs_diff > 1)) # 0.503
 
# Problem 6 - # Problem 5 - Set the seed at 1, then using a for-lop take a random sample of 5 mince 10,000 times. What percent of these 10,000 averages are more than 1 ounce away from the average of population?
set.seed(1)
n <- 10000
obs_diff <- vector("numeric", n)

for (i in seq(1, n)) {
  obs_diff[i] <- sample_avg(dat)
}
cat(mean(obs_diff > 1)) # 0.5084

# Problem 7 - Repeat Problem 5, but with a sample of 50 mice.
set.seed(1)
n <- 1000
sample_avg <- function(dats=dat, ns=50) {
  rand_sample <- sample(dats, ns)
  return(abs(mean(dats) - mean(rand_sample)))
}

obs_diff = vector("numeric", n)

for (i in seq(1, n)) {
  obs_diff[i] = sample_avg()
}

cat(mean(obs_diff > 1)) # Note that the value changed drastically.
