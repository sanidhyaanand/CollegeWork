# probability of success
p <- 0.8

# probability of success given 1 is transmitted
psuccessone <- pbinom(2,5,(1-p))

# probability of success given 0 is to be transmitted
psuccesszero <- pbinom(2,5,(1-p))

# probability of success (1 and 0 are the only transmissions)
psuccess <- (psuccessone + psuccesszero) / 2

# probability of failure
1 - psuccess