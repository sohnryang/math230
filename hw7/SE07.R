### SE07 Problem 2
sample_num <- 1000000
dice1 <- sample(0:5, sample_num, replace=TRUE)
dice2 <- sample(0:5, sample_num, replace=TRUE)
d_samples <- abs(dice1 - dice2)
dist <- table(d_samples) / sample_num

# Expected result:
# d_samples
#        0        1        2        3        4        5
# 0.166861 0.277450 0.222178 0.166898 0.111022 0.055591
print(dist)

### SE07 Problem 3 (a)
# Refer to the PDF file for derivation.
y_mean_exact <- 2
print(y_mean_exact)

### SE07 Problem 3 (b)
x1_samples <- rnorm(sample_num)
x2_samples <- rnorm(sample_num)
y_samples <- (x1_samples + 1) ^ 2 + x2_samples

### SE07 Problem 3 (c)
plot(density(y_samples))

### SE07 Problem 3 (d)
y_mean_numeric = mean(y_samples)
print(y_mean_numeric)
print(abs(y_mean_numeric - y_mean_exact))
