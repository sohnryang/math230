### SA06 Problem 4 (a)
prob4a_answer <- 1 - pnorm(224, mean=200, sd=15)
print(prob4a_answer)

### SA06 Problem 4 (b)
prob4b_answer <- pnorm(209, mean=200, sd=15) - pnorm(191, mean=200, sd=15)
print(prob4b_answer)

### SA06 Problem 4 (c)
prob4c_answer <- 1000 * (1 - pnorm(230, mean=200, sd=15))
print(prob4c_answer)

### SA06 Problem 4 (d)
prob4d_answer <- qnorm(0.25, mean=200, sd=15)
print(prob4d_answer)

### SA06 Problem 5
prob5_answer <- 1 - pbeta(1/3, 1, 3)
print(prob5_answer)

### SA06 Problem 6
prob6_answer <- 1 - pgamma(30, 5, scale=10)
print(prob6_answer)

### SA06 Problem 7 (a)
prob7a_answer <- pchisq(7, 5) - pchisq(3, 5)
print(prob7a_answer)

### SA06 Problem 7 (b)
prob7b_answer <- plnorm(5, 2, 2)
print(prob7b_answer)

### SA06 Problem 8 (a)
prob8a_answer <- qgamma(1 - 0.255, 3, 2)
print(prob8a_answer)

### SA06 Problem 8 (b)
prob8b_answer <- qchisq(0.515, 6)
print(prob8b_answer)

### SA06 Problem 8 (c)
prob8c_answer <- qbeta(0.5, 1.2, 2.1)
print(prob8c_answer)
