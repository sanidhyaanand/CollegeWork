# poisson constant for no benefit
l1 <- 3

# possion constant for benefit
l2 <- 2

PrA <- c(0.75,0.25)

PrBA <- c(dpois(0,l2), dpois(0,l1))

# returns probability of A[1] given B
LaplacesDemon::BayesTheorem(PrA, PrBA)