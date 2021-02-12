n <- 1000
p <- 1 / 1000
lambda <- n * p

# exact 
1 - pbinom(3,n,p)

# approx 
1 - ppois(3,lambda)