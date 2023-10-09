### SA05 Problem 1
bino_dist <- dbinom(6:9, 29, 0.356)
p <- sum(bino_dist)
print(p)

### SA05 Problem 2
x <- qbinom(0.9, 38, 0.424) + 1
print(x)

### SA05 Problem 3
total_peaches <- 14400
blemished_peaches <- 1100
hyper_dist_exact <- dhyper(0:3, blemished_peaches, total_peaches - blemished_peaches, 55)
p_exact = sum(hyper_dist_exact)
print(p_exact)
hyper_dist_approx <- dbinom(0:3, 55, blemished_peaches / total_peaches)
p_approx = sum(hyper_dist_approx)
print(p_approx)
diff <- abs(p_exact - p_approx)
print(diff)

### SA05 Problem 4a
negbino_dist <- dnbinom(0:7, 7, 0.29)
p_negbino <- sum(negbino_dist)
print(p_negbino)

pois_dist <- dpois(0:4, 3.2)
p_pois <- 1 - sum(pois_dist)
print(p_pois)
