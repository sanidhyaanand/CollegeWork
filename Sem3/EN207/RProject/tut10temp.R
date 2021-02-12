x <- rexp(10000, 4)

par(mfrow = c(2,1))
hist(x)
y <- sample(x,200,replace = FALSE)
hist(y)