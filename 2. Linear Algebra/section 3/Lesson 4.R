# Loading Data:
path <- "~/GitHub/certification-lifesciences/2. Linear Algebra/section 3/femaleMiceWeights.csv"
dat <- read.csv(path)

# Creating a Strip Chart:
stripchart(dat$Bodyweight ~ dat$Diet,
           vertical=TRUE, method="jitter",
           main = "Bodyweight over Diet")

# Creating a Linear Model with 1 variable:
levels(dat$Diet)

X <- model.matrix(~ Diet, data=dat)
X

# Running the linear model:
fit <- lm(Bodyweight ~ Diet, data=dat)
summary(fit)
coefs <- coef(fit)
print(coefs)
