# Demonstration:
x <- c(1, 1, 2, 2)
f <- formula(~x)

# Creating a model matrix:
model.matrix(f)

mod_matrix_man <- cbind(rep(1, 4), x)

# Creating a factor:
x <- factor(c(1, 1, 2, 2, 3, 3))
f <- formula(~x)
model.matrix(f)
