# Getting the data:
library(downloader)
library(dplyr)
destination <- "~/GitHub/certification-lifesciences/Book/data"
path <- "~/GitHub/certification-lifesciences/Book/data/femaleControlsPopulation.csv"
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
if (!file.exists(path)) download(url, destfile=path)
population <- read.csv(path) %>% unlist()

# Sampling some mice:
control <- sample(population, 12)
print(mean(control))

control <- sample(population, 12)
print(mean(control))

control <- sample(population, 12)
print(mean(control))

# Note that the average varies and therefore we need to find some patterns
# in the variance to learn about the data.