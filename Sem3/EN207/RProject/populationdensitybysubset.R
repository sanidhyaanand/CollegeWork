X <- read.csv("Data/RainfallData.csv", header=TRUE, na.strings = TRUE)
Columns <- c("JAN","FEB","MAR","APR","MAY","JUN",
             "JUL","AUG","SEP","OCT","NOV","DEC",
             "ANNUAL","JF","MAM","JJAS","OND")
X[Columns] <- sapply(X[Columns], as.numeric)