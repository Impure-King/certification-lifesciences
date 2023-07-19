X <- matrix(c(1, 1, 1, 1, 0, 0, 1, 1), nrow=4)
rownames(X) <- c("a", "a", "b", "b")
beta <- c(5, 2)

X %*% beta
