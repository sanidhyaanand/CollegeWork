WetMixMoisture <- c(5,6,7,10,12,15,18,20)
FinalDensity <- c(7.4,9.3,10.6,15.4,18.1,22.2,24.1,24.8)
fit <- lm(FinalDensity~WetMixMoisture)
plot(WetMixMoisture,FinalDensity,xlab="Moisture in wet mix",ylab="Final density of the product")
abline(fit)
#summary(fit)

resids <- fit$residuals

SSR <- sum(resids^2)