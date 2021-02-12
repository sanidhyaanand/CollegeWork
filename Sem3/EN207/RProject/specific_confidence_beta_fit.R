## Fir calculating confidence interval for specific value of all males
## whose fathers are 68 inches tall

HFather <- c(60,62,64,65,66,67,68,70,72,74)
HSon <- c(63.6,65.2,66,65.5,66.9,67.1,67.4,68.3,70.1,70)
fit <- lm(HSon~HFather)
plot(HFather,HSon,xlab="Height of father (in inches)",ylab="Height of son (in inches)")
abline(fit)
summary(fit)

SXX <- sum((HFather-mean(HFather))^2)
SYY <- sum((HSon-mean(HSon))^2)
SXY <- sum((HFather-mean(HFather))*(HSon-mean(HSon)))
SSR <- sum((fitted(fit)-HSon)^2)

n <- 10
xbar <- mean(HFather)
xzero <- 68
TS <- sqrt(1/n + (xzero-xbar)^2/SXX)*sqrt(SSR/(n-2))

LL <- coefficients(fit)[1] + coefficients(fit)[2]*xzero + TS*qt(0.025,n-2)

UL <- coefficients(fit)[1] + coefficients(fit)[2]*xzero - TS*qt(0.025,n-2)

LL
UL