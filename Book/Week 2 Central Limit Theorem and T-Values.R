# Loading the data:
library(dplyr)
path <- "~/GitHub/certification-lifesciences/Book/data/femaleControlsPopulation.csv"
dat <- read.csv(path) %>% unlist()

# Problem 1 - Take a 1000 random sample averages of 5 and 50 sample size each. Plot a histogram and describe whose spread is less.

n <- 1000

average_taker = function(size, rounds = n, dats = dat) {
  set.seed(1)
  v <- vector("numeric", rounds)
  for (i in seq(1, rounds)) {
    rand_sample <- sample(dat, size)
    v[i] = mean(rand_sample)
  }
  return(v)
}

averages5 <- average_taker(5)
averages50 <- average_taker(50)

par(mfrow=c(1, 2))

hist(averages5)
hist(averages50)

# Looks like the average of 50 has less spread because of the smaller range. This aligns with CLT.

# Problem 2 - From the last set of averages of sample size 50, what proportion as between 23 and 25?

cat(mean(averages50 < 25) - mean(averages50 < 23)) # 0.982


# Problem 3 - What is the proportion of observations between 23 and 25 with average 23.9 and standard deviation 0.43?

cat(pnorm(25, 23.9, 0.43) - pnorm(23, 23.9, 0.43)) # 0.9765648

# Problem 4 - What proportion of mice are within one standard deviation away from average weight:
library(downloader) 
library(rafalib)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
path <- "~/GitHub/certification-lifesciences/Book/data/mice_pheno.csv"
download(url, destfile=path)
dat <- na.omit( read.csv(path))
y <- dat %>% filter(Diet=="chow") %>% select("Bodyweight") %>% unlist()
z <- (y - mean(y))/popsd(y)

cat(mean(abs(z) <= 1))
    

# Problem 5 - Use CLT to approximate the probability that our estimate X is off by more than 2 grams from the population mean.
dat <- read.csv(path)
X <- dat %>% filter(Diet=="chow") %>% select(Bodyweight) %>% unlist()
Y <- dat %>% filter(Diet=="hf") %>% select(Bodyweight) %>% unlist()

t.test(X, Y)
