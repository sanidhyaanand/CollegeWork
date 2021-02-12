## For estimating beta to zero

X <- c(45,50,55,60,65,70,75)
Y <- c(24.2,25.0,23.3,22.0,21.5,20.6,19.8)
fit <- lm(Y~X)
plot(X,Y,xlab="X",ylab="Y")

abline(fit)
summary(fit)

SXX <- sum((X-mean(X))^2)
SYY <- sum((Y-mean(Y))^2)
SXY <- sum((X-mean(X))*(Y-mean(Y)))
SSR <- sum((fitted(fit)-Y)^2) # or sum((fit$residuals)^2)

n <- 7
B <- SXY/SXX
TestStatistic <- sqrt((n-2)*SXX/SSR)*abs(B)

# level of significance
alpha <- 0.01

if(TestStatistic < qt(1-alpha/2,n-2)){
  print("Null hypothesis is accepted")
} else{
  print("Null hypothesis is rejected")
}

# 100(1-alpha/2)% level of confidence
LL <- B - sqrt(SSR/((n-2)*SXX))*qt(1-0.025,n-2)
UL <- B + sqrt(SSR/((n-2)*SXX))*qt(1-0.025,n-2)

LL
UL