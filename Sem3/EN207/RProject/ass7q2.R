## Use pois for approx, this is binom

p <- 0.01
n <- 50

# at least once
1 - pbinom(0,n,p)

# exactly once 
dbinom(1,n,p)

# at least twice
1 - pbinom(1,n,p)