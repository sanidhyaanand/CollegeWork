# SPI calculating program

# Variable <- c(CourseCode, CourseCredits, GradeObtained)
C1 <- c("EN203", 6, 10)
C2 <- c("EN207", 6, 10)
C3 <- c("EN209", 8, 10)
C4 <- c("EN211", 6, 10)
C5 <- c("HS101", 6, 8)
C6 <- c("HS200", 3, 8)
C7 <- c("ES200", 3, 9)

X <- data.frame(C1,C2,C3,C4,C5,C6,C7)
rm(C1,C2,C3,C4,C5,C6,C7)
# View(X)

Credits <- as.numeric(X[2,])
Grades <- as.numeric(X[3,])
TotalObtained <- sum(Credits * Grades)
TotalCredits <- sum(Credits)
rm(Credits, Grades)

SPI <- TotalObtained / TotalCredits
sprintf("Your SPI is: %f", SPI)

