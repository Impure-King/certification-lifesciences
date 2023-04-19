library(dplyr)

weights_path <- "~/GitHub/certification-lifesciences/1. Statistics/Section 2/data/femaleMiceWeights.csv"
dat <- read.csv(weights_path)

control_weights <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist
treated_weights <- filter(dat, Diet=="hf") %>% select(Bodyweight) %>% unlist

control_path <- "~/GitHub/certification-lifesciences/1. Statistics/Section 2/data/femaleMiceControl.csv"
population <- read.csv(control_path)

population <- unlist(population)

control_group <- sample(population, 12)
treatment_group <- sample(population, 12)

abs(mean(control_group) - mean(treatment_group))

n <- 10000
nulls <- vector("numeric", n)
for (i in 1:n){
  control <- sample(population, 12)
  treatment <- sample(population, 12)
  nulls[i] <- mean(treatment) - mean(control)
}
hist(nulls)

### Homework ----------------------------------------------------------------------------
x <- read.csv(control_path)
x <- select(x, Bodyweight) %>% unlist()


m_avg <- mean(x)
n <- 1e3
nulls <- vector(mode="numeric", n)
set.seed(1)
for (i in 1:n){
  samples <- sample(x, 5)
  nulls[i] <- abs(mean(samples) - m_avg)
}

mean(nulls > 1)

                  