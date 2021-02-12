#X <- read.csv("Data/RainfallData.csv", header = TRUE)
#View(X)

# Hypothesis: Annual average rainfall over State1 is same as that of State2
#             vs less than that of State2

BHA <- subset(X,SUBDIVISION=="Kerala")

GWB <- subset(X,SUBDIVISION=="Andaman & Nicobar Islands")

n <- length(BHA$ANNUAL)
m <- length(GWB$ANNUAL)

Xbar <- mean(BHA$ANNUAL)
Ybar <- mean(GWB$ANNUAL)
XVar <- var(BHA$ANNUAL)
YVar <- var(GWB$ANNUAL)
Sp2 <- ((n-1)*XVar+(m-1)*YVar)/(n+m-2)
TestStat <- (Xbar-Ybar)/sqrt(Sp2*((1/n)+(1/m)))

alpha <- 0.05
pval <- 1-pnorm(TestStat)

z <- qnorm(1-alpha)

if(pval>alpha){
  print("Hypothesis accepted")
} else {
  print("Hypothesis rejected")
}