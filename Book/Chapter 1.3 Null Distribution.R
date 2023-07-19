# Loading the data:
library(dplyr)
path <- "~/GitHub/certification-lifesciences/Book/data/femaleControlsPopulation.csv"
dat <- read.csv(path) %>% unlist()

# Creating a function to return a mean:
computeObsdiff = function() {
  control <- sample(population, 12) # Getting 12 control mice.
  treatment <- sample(population, 12) # Getting another 12 control mouse that act as treatment mouse
  return(mean(treatment) - mean(control))
}

# Creating a numerical vector:
n <- 10000
null <- vector("numeric", n) # Our null distribution vector
for (i in 1:n) {
  null[i] <- computeObsdiff()
}

# Printing out how many percentage was greater than obs_diff
print(mean(null >= obs_diff))

# Notice how the chances of the null hypothesis being accurate is really small.
# Only ~1.2% of the times does the difference exist regardless of diet. This is called a p-value.

# Plotting the Null Distribution:
hist(null)
