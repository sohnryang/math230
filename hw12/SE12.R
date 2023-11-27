### SE12 Problem 1
samp1 <- c(0.32, 0.53, 0.28, 0.37, 0.47, 0.43, 0.36, 0.42, 0.38, 0.43)
samp2 <- c(0.26, 0.43, 0.47, 0.49, 0.52, 0.75, 0.79, 0.86, 0.62, 0.46)
t.test(samp2, samp1, var.equal=TRUE)

### SE12 Problem 2
samp1 <- c(24, 25, 26, 19, 26, 28, 18, 23, 20)
samp2 <- c(29, 32, 31, 36, 27, 24, 33, 32, 26)
t.test(samp2, samp1, paired=TRUE)
# For this problem, pairing is necessary because each homogeneous experimental
# unit receives both population conditions. They are not assigned randomly.

### SE12 Problem 3 (a)
ratdata <- read.csv("Ratlives.csv", header=TRUE)
x1 <- ratdata[,1]
x2 <- ratdata[,2]
x2 <- x2[!is.na(x2)]
alpha <- 0.05
n1 <- length(x1)
n2 <- length(x2)
ci_rad1 <- qt(alpha / 2, n1 - 1) * sd(x1) / sqrt(n1)
ci_rad2 <- qt(alpha / 2, n2 - 1) * sd(x2) / sqrt(n2)
ci_lo1 <- mean(x1) - ci_rad1
ci_hi1 <- mean(x1) + ci_rad1
ci_lo2 <- mean(x2) - ci_rad2
ci_hi2 <- mean(x2) + ci_rad2
print(ci_lo1)
print(ci_hi1)
print(ci_lo2)
print(ci_hi2)

### SE12 Problem 3 (b) (i)
t.test(x1, x2, var.equal=TRUE, conf.level=0.99)

### SE12 Problem 3 (b) (ii)
t.test(x1, x2, conf.level=0.99)

### SE12 Problem 4
darwindata <- read.csv("Darwin.csv", header=TRUE)
x1 <- darwindata[,2]
x2 <- darwindata[,3]

### SE12 Problem 4 (a)
t.test(x1, x2, paired=TRUE)

### SE12 Problem 4 (b)
rel_diff <- (x1 - x2) / x2
n <- length(rel_diff)
alpha <- 0.05
ci_rad <- qt(alpha / 2, n - 1, lower.tail=FALSE) * sd(rel_diff) / sqrt(n)
ci_lo <- mean(rel_diff) - ci_rad
ci_hi <- mean(rel_diff) + ci_rad
print(ci_lo)
print(ci_hi)

### SE12 Problem 4 (c)
# I would suggest Darwin to use mean relative difference, as it gives more
# conclusive result compared to mean difference. The 95% confidence interval
# of mean relative difference does not contain zero, which means that we can be
# 95% confident that cross-fertilization is better than self-fertilization.
