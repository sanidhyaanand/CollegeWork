# Clear R workspace
rm(list = ls() ) 

# Declare a variable to read and store the data frame 
captaincy = read.csv("CaptaincyData.csv")

# View the stored data frame 
View(captaincy)

# Create a subset of captaincy data frame 
subdata = captaincy[1:3, c("played", "won", "lost")]
matrixA = as.matrix(subdata)
print(matrixA)

# Create a vector for 3*3 identity matrix 
values = c(1,0,0,0,1,0,0,0,1)
matrixB = matrix(values, nrow = 3, ncol = 3, byrow = TRUE)
print(matrixB)

# Add and subtract two matrices 
matrixA + matrixB
matrixA - matrixB

# Multiply two matrices in element wise format 
matrixA * matrixB

# Multiply two matrices in actual matrix multiplication format 
matrixA %*% matrixB

# Transpose of matrixA 
t(matrixA)

# Determinant of matrixA 
det(matrixA)
