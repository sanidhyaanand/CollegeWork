HFather <- c(60,62,64,65,66,67,68,70,72,74)
HSon <- c(63.6,65.2,66,65.5,66.9,67.1,67.4,68.3,70.1,70)
fit <- lm(HSon~HFather)
plot(HFather,HSon,xlab="Height of father (in inches)",ylab="Height of son (in inches)")
abline(a=0,b=1)
summary(fit)

SXX <- sum((HFather-mean(HFather))^2)
SYY <- sum((HSon-mean(HSon))^2)
SXY <- sum((HFather-mean(HFather))*(HSon-mean(HSon)))
SSR <- sum((fitted(fit)-HSon)^2)

n <- 10
B <- SXY/SXX
TestStatistic <- sqrt((n-2)*SXX/SSR)*(B-1)
if(TestStatistic > -qt(0.01,n-2)){
  print("Null hypothesis is accepted")
} else{
  print("Null hypothesis is rejected")
}