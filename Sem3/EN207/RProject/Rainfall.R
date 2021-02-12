X <- read.csv("Data/RainfallData.csv", header=TRUE, na.strings = TRUE)
Columns <- c("JAN","FEB","MAR","APR","MAY","JUN",
             "JUL","AUG","SEP","OCT","NOV","DEC",
             "ANNUAL","JF","MAM","JJAS","OND")
X[Columns] <- sapply(X[Columns], as.numeric)
NIK <- subset(X, SUBDIVISION == "North Interior Karnataka")

SIK <- subset(X,SUBDIVISION=="South Interior Karnataka")
par(mfrow=c(2,1))
boxplot(NIK$ANNUAL,main="North Interior Karnataka",xlab="Annual Rainfall",horizontal = TRUE)
boxplot(SIK$ANNUAL,main="South Interior Karnataka",xlab="Annual Rainfall",horizontal = TRUE)

Y <- subset(NIK, ANNUAL > 1000)
View(Y)

Z1 <- as.numeric(X[3777,Columns[1:12]])
plot(Z1)

pie(Z1, main = "1956 NIK") 
r <- c("JAN"=N56$JAN, "FEB"=N56$FEB, "MAR"=N56$MAR)
pie(r, main = "NIK 1956 FIRST THREE MONTHS")
