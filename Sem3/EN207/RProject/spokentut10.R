captaincy = read.csv("Data/CaptaincyData.csv")

subdata = captaincy[1:3, c("played", "won", "lost")]
A = as.matrix(subdata)


# calculating sum using for loop
startTime <- Sys.time()
totalSum <- 0
for (i in 1:3) {
  for(j in 1:3) {
     totalSum <- A[i,j]
  }
}
print(totalSum)
endTime <- Sys.time()
endTime - startTime

# calculating sum using inbuilt functions
sum(A)

rowSums(A)

captaincy <- rbind(captaincy, data.frame(names="Kohli",
                                         Y = 2016,
                                         played = 30,
                                         won = 20,
                                         lost = 9,
                                         victory = 20/30))
captaincy <-  cbind(captaincy, defeat <- captaincy$lost/captaincy$played)
