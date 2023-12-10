### Problem 40
x1 <- c(0.97, 1.16, 0.72, 0.86, 1.00, 0.85, 0.81, 0.58, 0.62, 0.57, 1.32, 0.64, 1.24, 0.98, 0.99, 1.09, 0.90, 0.92, 0.74, 0.78, 0.88, 1.24, 0.94, 1.18)
x2 <- c(0.48, 0.71, 0.98, 0.68, 1.18, 1.36, 0.78, 1.64)
t.test(x1, x2, alternative="two.sided")

### Problem 44
x1 <- c(224, 270, 400, 444, 590, 660, 1400, 680)
x2 <- c(116, 96, 239, 329, 437, 597, 689, 576)
t.test(x1, x2, alternative="two.sided", paired=TRUE)

### Problem 80
x <- c(14, 18, 32, 20, 16)
chisq.test(x)

### Problem 86
m <- matrix(c(21, 36, 30, 48, 26, 19), nrow=2, byrow=TRUE)
chisq.test(m)

### Problem 92
m <- matrix(c(11, 13, 9, 32, 28, 27, 7, 9, 14), nrow=3, byrow=TRUE)
chisq.test(m)
