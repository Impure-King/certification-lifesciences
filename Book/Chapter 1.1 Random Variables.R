# Retrieving the data:
"~/GitHub/certification-lifesciences/Book/data/femaleMiceWeights.csv" -> path
dat <- read.csv(path)
head(dat)

# Viewing the entire dataset:
View(dat)

# Getting the average of each group:
library(dplyr)

control <- filter(dat, Diet=="chow") %>% select(Bodyweight) %>% unlist()
treatment <- filter(dat, Diet=="hf") %>% select(Bodyweight) %>% unlist()

print(mean(control))
print(mean(treatment))

# Getting the observed difference:
mean(treatment) - mean(control) -> obs_diff

print(obs_diff)

# Note that the difference may be due to the fluctuations in all the variables.
# Therefore, we will learn further statistical methods to guarantee an observation.