# Script for Data/Data1.csv

X <- read.csv("Data/Data1.csv", header = TRUE)

#plot(X$kg, X$cm, xlab = "weights in kg", ylab = "heights in cm")
#dotchart(X$cm, xlab = "heights in cm", labels = c(X$kg))
#dotchart(X$kg)
H <- sort(X$cm)
W <- sort(X$kg)
par(mfrow = c(4,1))
#dotchart(H, xlab = "heights in cm")
#dotchart(W, xlab = "weights in cm")
plot(X$kg, type = "b", ylab = "Weights")
plot(Xdash$cm, type = "b", ylab =  "heights")
plot(Xdash$kg, Xdash$cm, ylab = "heights", xlab = "weights")

BMI = Xdash$kg * 10000 / (Xdash$cm * Xdash$cm)
plot(BMI, xaxt = "n", ylab = "BMI", xlab = "")

labelList = seq(1, 34, by = 1)
axis(1, at = seq(1, 34, by=1), labels = FALSE)
text(seq(1, 34, by=1), par("usr")[3] - 0.2, labels = labelList,
     srt = 45, offset = 1.5, pos = 1, xpd = TRUE)