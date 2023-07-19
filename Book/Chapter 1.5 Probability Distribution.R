# Loading in the data:
library(dplyr)
population <- read.csv("~/GitHub/certification-lifesciences/Book/data/femaleControlsPopulation.csv") %>% unlist()

n <- 100
library(rafalib)
# Creates an empty plot:
nullplot(-5, 5, 1, 30, xlab="Observed differences (grams)", ylab="Frequency")

# Creating a numeric vector:
totals <- vector("numeric", 11)

# Filling in graph with a Monte Carlo Simulation:
for (run in seq(1, n)) {
  control <- sample(population, 12)
  treatment <- sample(population, 12)
  nulldiff <- mean(treatment) - mean(control)
  j  <- pmax(pmin(round(nulldiff)+6, 11), 1)
  totals[j] <- totals[j] + 1
  text(j-6, totals[j], pch=15, round(nulldiff, 1))
  Sys.sleep(6/i)
}

hist(null, freq=TRUE)
