# Question 2: Find c:
coff_mat <- matrix(c(3, 4, -5, 1, 2, 2, 2, -1, 1, -1, 5, -5, 5, 0, 0, 1), 4, 4)
coff_mat <- t(coff_mat)

answer_mat <- rbind(10, 5, 7, 4)
var <- solve(coff_mat, answer_mat)

coff_mat %*% var
cat(var)
