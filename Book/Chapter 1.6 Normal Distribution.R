pnorm # Gives the proportion of numbers below the value in a standard gaussian distribution

# Example: What proportion of data is above 1 sd away from the mean:
# What proportion is 1 sd below the mean?

pnorm(-1)

# What proportion is 1 sd above the mean?

pnorm(1)

# What proportion is 1 sd far within the mean?
pnorm(1) - pnorm(-1) # 68% of the data is 1 sd from the mean.

# Example: How much data is 3 sd away from the mean?
pnorm(3) - pnorm(-3) # 99.7

# mean + 3 data - mean - 3 data = with 3 s.d. data