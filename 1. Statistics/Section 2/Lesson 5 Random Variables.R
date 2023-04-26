library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/mice_pheno.csv"
filepath <- "~/GitHub/certification-lifesciences/1. Statistics/Section 2/data/mouse-pheno.csv"
download(url, filepath)
dat <- read.csv(filepath)

# Removing the na values:
dat <- na.omit(dat)

## Question 1:
library(dplyr)

x <- filter(dat, Diet=="chow") %>% filter(Sex=="M") %>% select("Bodyweight") %>% unlist()
mean(x)

## Question 2:
library(rafalib)
popsd(x) # Assumes that the data follows a normal distribution.
sd(x)

# Checking the assumption:
hist(x, main="Male mice weight", xlab="weights")


## Question 3:
set.seed(1)
X <- mean(sample(x, 25))


# Question 4:
y <- filter(dat, Diet=="hf") %>% filter(Sex=="M") %>% select("Bodyweight") %>% unlist()
mean(y)

# Question 5:
rafalib::popsd(y)

# Question 6:
set.seed(1)
Y <- mean(sample(y, 25))
print(Y)

# Question 7:
print(abs(mean(y) - mean(x)) - abs(Y - X))

# Question 8:
a <- filter(dat, Diet=="chow") %>% filter(Sex=="F") %>% select("Bodyweight") %>% unlist()
b <- filter(dat, Diet=="hf") %>% filter(Sex=="F") %>% select("Bodyweight") %>% unlist()
set.seed(2)
A <- mean(sample(a, 25))
set.seed(2)
B <- mean(sample(b, 25))

print(abs(mean(b) - mean(a) + A - B))
