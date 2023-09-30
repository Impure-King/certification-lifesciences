X <- matrix(c(1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,1),nrow=6)
rownames(X) <- c("a","a","b","b","c","c")

beta <- c(10, 3, -3)
X

# Problem 3
library(UsingR)
x = father.son$fheight
y = father.son$sheight
n = length(y)

random_sample <- function(){N =  50
  index = sample(n,N)
  sampledat = father.son[index,]
  x = sampledat$fheight
  y = sampledat$sheight
  betahat =  lm(y~x)$coef
  print(y == fit$fitted.values)
  SSR <- sum((y - fit$fitted.values)^2)
  sigma2 <- SSR/2
  return 
}

