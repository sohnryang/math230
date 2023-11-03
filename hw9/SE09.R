### SE09 Problem 1
h2p <- read.csv("h2p.csv")

### SE09 Problem 1 (i)
sample_mean <- mean(h2p$Height)
print(sample_mean)

### SE09 Problem 1 (ii)
sample_median <- median(h2p$Height)
print(sample_median)

### SE09 Problem 1 (iii)
standard_deviation <- sd(h2p$Height)
variance <- standard_deviation ^ 2
print(variance)
print(standard_deviation)

### SE09 Problem 1 (iv)
sample_range <- max(h2p$Height) - min(h2p$Height)
print(sample_range)

### SE09 Problem 1 (v)
sample_iqr <- IQR(h2p$Height)
print(sample_iqr)

### SE09 Problem 2 (a)
prob_chi <- 1 - pchisq(10.25, 9)
print(prob_chi)

### SE09 Problem 2 (b)
quantile_chi <- qchisq(0.08, df=8, lower.tail=FALSE)
print(quantile_chi)

### SE09 Problem 3 (1)
digits <- c(2, 0, 2, 2, 0, 3, 2, 3, 2, 0, 0, 3, 0, 5, 2, 8)
digit_mean <- mean(digits)
print(digit_mean)
digit_sd <- sd(digits)
print(digit_sd)
hist(digits)

### SE09 Problem 3 (2)
samp2 <- matrix(sample(digits, 2*100000, rep=TRUE), ncol=2)
aver2 <- apply(samp2, 1, mean)
aver2_mean <- mean(aver2)
print(aver2_mean)
aver2_sd <- sd(aver2)
print(aver2_sd)

### SE09 Problem 3 (3)
samp4 <- matrix(sample(digits, 4*100000, rep=TRUE), ncol=4)
aver4 <- apply(samp4, 1, mean)
aver4_mean <- mean(aver4)
print(aver4_mean)
aver4_sd <- sd(aver4)
print(aver4_sd)

samp8 <- matrix(sample(digits, 8*100000, rep=TRUE), ncol=8)
aver8 <- apply(samp8, 1, mean)
aver8_mean <- mean(aver8)
print(aver8_mean)
aver8_sd <- sd(aver8)
print(aver8_sd)

samp16 <- matrix(sample(digits, 16*100000, rep=TRUE), ncol=16)
aver16 <- apply(samp16, 1, mean)
aver16_mean <- mean(aver16)
print(aver16_mean)
aver16_sd <- sd(aver16)
print(aver16_sd)

samp32 <- matrix(sample(digits, 32*100000, rep=TRUE), ncol=32)
aver32 <- apply(samp32, 1, mean)
aver32_mean <- mean(aver32)
print(aver32_mean)
aver32_sd <- sd(aver32)
print(aver32_sd)

# From this, we can know that sample mean is consistent with respect to sample
# size, but standard deviation decreases as smaple size increases.

### SE09 Problem 3 (4)
y_2 = sqrt(2) * (aver2 - digit_mean) / digit_sd
y_4 = sqrt(4) * (aver4 - digit_mean) / digit_sd
y_8 = sqrt(8) * (aver8 - digit_mean) / digit_sd
y_16 = sqrt(16) * (aver16 - digit_mean) / digit_sd
y_32 = sqrt(32) * (aver32 - digit_mean) / digit_sd
par(mfrow=c(3, 2))
hist(y_2)
hist(y_4)
hist(y_8)
hist(y_16)
hist(y_32)

# We can observe that the distribution converges to normal distribution as
# sample size gets larger, as the central limit theorem implies.
