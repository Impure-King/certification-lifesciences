# Loading the data:
filepath <- "~/GitHub/certification-lifesciences/1. Statistics/Section 2/data/femaleMiceWeights.csv"
dat <- read.csv(filepath)
library(dplyr)
controls <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist()
treated <- filter(dat, Diet=="hf") %>% select(Bodyweight) %>% unlist()

# Even the median is representing the data:
par(mfrow=c(1, 2))
boxplot(controls)
boxplot(treated)

# Getting more data:
library(downloader)
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/femaleControlsPopulation.csv"
path <- "~/GitHub/certification-lifesciences/1. Statistics/Section 2/data/femaleMiceControl.csv"
download(url, path)

# Loading the new data:

control_dat <- read.csv(path)
control_dat <- unlist(control_dat)

mean(sample(control_dat, 12))


#### Homework -----------------------------------------------------------------------

mean(control_dat)

set.seed(5)
a <- sample(control_dat, 5)
abs(mean(control_dat) - mean(a))
