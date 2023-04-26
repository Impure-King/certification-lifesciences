library(dplyr)
library(rafalib)

url <- "~/GitHub/certification-lifesciences/1. Statistics/Section 2/data/mouse-pheno.csv"
dat <- read.csv(url)

# Removing the na values:
dat <- na.omit(dat)

### Question 4:

y <- filter(dat, Sex=="M") %>% filter(Diet=="chow") %>% select("Bodyweight") %>% unlist()
hist(y)

upper_bound <- mean(y) + popsd(y)
lower_bound <- mean(y) - popsd(y)

upper_mat <- y < upper_bound
lower_mat <- y > lower_bound

print(mean(upper_mat==lower_mat))

### Question 5:
upper_bound <- mean(y) + 2 * popsd(y)
lower_bound <- mean(y) - 2 * popsd(y)

upper_mat <- y < upper_bound
lower_mat <- y > lower_bound

print(mean(upper_mat==lower_mat))

### Question 6:
upper_bound <- mean(y) + 3 * popsd(y)
lower_bound <- mean(y) - 3 * popsd(y)

upper_mat <- y < upper_bound
lower_mat <- y > lower_bound

print(mean(upper_mat==lower_mat))

### Question 8:
set.seed(1)
avgs <- replicate(10000, mean( sample(y, 25))) # replicate reevaluates the sample mean 1e4 times and returns an array.
mypar(1,2)
hist(avgs)
qqnorm(avgs)
qqline(avgs)

print(mean(avgs))


### Question 9:
print(popsd(avgs))
