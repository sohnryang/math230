### SE13 Problem 1
ratdata <- read.csv("Ratlives.csv", header=TRUE)
x1 <- ratdata[,1]
x2 <- ratdata[,2]
x2 <- x2[!is.na(x2)]

### SE13 Problem 1 (i)
t.test(x1, x2, alternative="greater", conf.level=0.95)
# We can reject H0 as p-value is smaller than 0.05.

### SE13 Problem 1 (ii)
t.test(x1, x2, alternative="greater", conf.level=0.95)
# We can reject H0 as p-value is smaller than 0.05.

### SE13 Problem 2
darwindata <- read.csv("Darwin.csv", header=TRUE)
x1 <- darwindata[,2]
x2 <- darwindata[,3]

### SE13 Problem 2 (a)
t.test(x1, x2, alternative="two.sided", paired=TRUE, conf.level=0.99)
# As p-value is greater than 0.01, we cannot reject the null hypotheis.

### SE13 Problem 2 (b)
rel_diff <- (x1 - x2) / x2
t.test(rel_diff, alternative="two.sided", conf.level=0.99)
# As p-value is greater than 0.01, we cannot reject the null hypotheis.
