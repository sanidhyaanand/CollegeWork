n = 4; # sample size (size of each data set)
m = 1e5;  # number of samples (or data sets)
options(digits=3) # what does this do?

# Uniform distribution
u = 2;
l = 0;
# Generate m sets of random samples of size n
exp_data = runif(n*m, l, u) # what does this command do?
data = matrix(exp_data, nrow = n, ncol = m) # transform data into a matrix

# Calculate sample means
sample_means = colMeans(data); # why not rowMeans?

# Verification of theoretical and calculated sample values
mean = (u+l)/2
stdev = sqrt((u-l)^2/12)
sample_mean = mean(sample_means) # sample mean of means
sample_stdev = sd(sample_means)  # sample sd of means

sdesc = sprintf("n = %d, m = %d",n,m) 
cat("Mean = ", mean,", Sample mean = ", sample_mean,"\n")
cat("Stdev = ",stdev,", Sample Stdev = ",sample_stdev,"\n")
# what do the three lines above do?

# what do the two lines below do?
xp = seq(l,u,(u-l)/100)
yp = dunif(xp,l,u)

# plot the original distribution and the sampling distribution
par(mfrow=c(2,1))
plot(xp,yp,'b',xlab="x",ylab="f(x)", main = "Uniform distribution")
hm = hist(sample_means, freq = F, breaks = "Sturges", xlim = c(0,3*mean), main=("Sample means"), xlab="x_mean") # histogram of sample means
text(2*mean,max(hm$density)-max(hm$density)/6, sdesc) # this displays the values for n and m on the histogram