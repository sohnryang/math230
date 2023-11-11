### SE10 Problem 1 (a)
sol1a <- pt(1.854, df=9)
print(sol1a)

### SE10 Problem 1 (b)
sol1b <- qt(0.82, df=11, lower.tail=FALSE)
print(sol1b)

### SE10 Problem 1 (c)
sol1c <- pf(1.245, df1=8, df2=11)
print(sol1c)

### SE10 Problem 1 (d)
sol1d <- qf(0.04, df1=11, df2=8, lower.tail=FALSE)
print(sol1d)

### SE10 Problem 2
R <- 100000
samp5 <- matrix(rnorm(5*R, mean=1, sd=2), ncol=5)
xbar <- apply(samp5, 1, mean)
variance <- apply(samp5, 1, sd) ** 2

### SE10 Problem 2 (a)
plot(density(xbar))
xbar_mean <- mean(xbar)
xbar_var <- sd(xbar) ** 2
print(xbar_mean)
print(xbar_var)
# The mean and variance are close to the theoretical values.

### SE10 Problem 2 (b)
hist(variance)
variance_mean <- mean(variance)
variance_var <- sd(variance) ** 2
print(variance_mean)
print(variance_var)
# The histogram looks loke chi-square distribution, and the mean and variance
# are close to the theoretical values.

### SE10 Problem 2 (c)
plot(variance, xbar)
print(cor(variance, xbar))
# The scatter plot looks like the variance and mean are independent.

### SE10 Problem 2 (d)
zk <- sqrt(5) * (xbar - 1) / 2
zk_mean <- mean(zk)
zk_sd <- sd(zk)
print(zk_mean)
print(zk_sd)
tk <- sqrt(5) * (xbar - 1) / sqrt(variance)
tk_mean <- mean(tk)
tk_sd <- sd(tk)
print(tk_mean)
print(tk_sd)
# T_k is more dispersed, as it has larger standard deviation.

### SE10 Problem 2 (e)
plot(density(zk))
lines(density(tk), col="blue")
# We can see that the density of T_k looks very similar to Z_k, which follows
# normal distribution, but T_k's distribution is slightly dispersed.

### SE10 Problem 2 (f)
qqnorm(zk)
qqline(zk)
qqnorm(tk)
qqline(tk)
# We can observe that Z_k is adequately distrivuted, and tk is a long-tailed
# distribution.
