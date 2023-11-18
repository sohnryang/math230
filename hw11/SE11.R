### SE11 Problem 1
samp_size <- 10000
n <- 8
mu <- 3
sigma <- 2
samp <- matrix(rnorm(n * samp_size, mean=mu, sd=sigma), ncol=n)
xbar <- apply(samp, 1, mean)
s <- apply(samp, 1, sd)
alpha <- 0.05

int1_rad <- qnorm(alpha / 2, lower.tail=FALSE) * sigma / sqrt(n)
int2_rad <- qnorm(alpha / 2, lower.tail=FALSE) * 1.8 / sqrt(n)
int3_rad <- qnorm(alpha / 2, lower.tail=FALSE) * 2.2 / sqrt(n)
int4_rad <- qt(alpha / 2, n - 1, lower.tail=FALSE) * s / sqrt(n)

### SE11 Problem 1 (a)
int1_hits <- sum(abs(xbar - mu) < int1_rad, na.rm=TRUE)
print(100 * (int1_hits / samp_size))
int2_hits <- sum(abs(xbar - mu) < int2_rad, na.rm=TRUE)
print(100 * (int2_hits / samp_size))
int3_hits <- sum(abs(xbar - mu) < int3_rad, na.rm=TRUE)
print(100 * (int3_hits / samp_size))
int4_hits <- sum(abs(xbar - mu) < int4_rad, na.rm=TRUE)
print(100 * (int4_hits / samp_size))

### SE11 Problem 1 (b)
print(int1_rad * 2)
print(mean(int4_rad) * 2)
# Since the widths of intervals in (iv) is not constant, we will use their
# mean. The width of intervals in (iv) is wider compared to those in (i), on
# average.

### SE11 Problem 2
h2p <- read.csv("h2p.csv")
xbar_height <- mean(h2p$Height)
height_rad <- qt(0.025, length(h2p$Height), lower.tail=FALSE) * sd(h2p$Height) / sqrt(length(h2p$Height))
print(xbar_height - height_rad)
print(xbar_height + height_rad)

xbar_pulse <- mean(h2p$Pulse)
pulse_rad <- qt(0.005, length(h2p$Pulse), lower.tail=FALSE) * sd(h2p$Pulse) / sqrt(length(h2p$Pulse))
print(xbar_pulse - pulse_rad)
print(xbar_pulse + pulse_rad)
