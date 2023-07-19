library(UsingR)
library(dplyr)

# Loading the heights data:
x <- father.son$fheight %>% unlist()

# Listing samples:
round(sample(x, 10), 1)

# Listing numbers are slightly cumbersome. Therefore, using some probability, we can more efficiently summarize the data.

smallest <- floor(min(x))
biggest <- ceiling(max(x))
values <- seq(smallest, biggest, len=400)

heightecdf <- ecdf(x)

plot(values, heightecdf(values), type='l',
     xlab='a (Height in inches)', ylab="Pr(x <= a)")

# Summarizing using an histogram:
bins <- seq(smallest, biggest)
hist(x, breaks=bins, xlab="Height (in)", ylab="Adult men heights")

# Using this histogram, we can easily summarize how many percentage of the men are over a certain threshold.
