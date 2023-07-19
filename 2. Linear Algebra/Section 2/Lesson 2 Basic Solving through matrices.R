g = 9.8 ## meters per second
h0 = 56.67
v0 = 0
n = 25
tt = seq(0,3.4,len=n) ##time in secs, t is a base function
y = h0 + v0 *tt  - 0.5* g*tt^2 + rnorm(n,sd=1)

X = cbind(1, tt, tt^2)

A = solve(crossprod(X))%*%t(X)

(A %*% y) 
lm(y ~ X)

# New Page:
library(UsingR)
x = father.son$fheight
y = father.son$sheight
n = length(y)
N = 50
set.seed(1)
index = sample(n,N)
sampledat = father.son[index,]
x = sampledat$fheight
y = sampledat$sheight
betahat = lm(y~x)$coef
fit = lm(y~x)
mat <- fit$fitted.values
ans <- 0

for (x in mat) {
  ans = ans + (mean(mat) - x)^2
}

X = cbind(rep(1,N), x)
ans <- solve(t(X) %*% X)
ans
