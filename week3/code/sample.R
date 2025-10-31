##sample.R
##Author: Ekadh Ranganathan
##Date: 31st October 2025

## Some functions to learn sample, lapply and sapply ##

## A function that samples a population and returns the mean of the sample ##

my_experiment <- function(popn, n) {
    pop_sample <- sample(popn, n, replace = FALSE)
    return(mean(pop_sample))
}

## Calculate mean using a for loop instead of using vectorization ##

loopy_sample1 <- function(popn, n, num) {
    result1 <- vector()
    for (i in 1:num) {
        result1 <- c(result1, my_experiment(popn, n))
    }
    return(result1)
}

## Calculate means of multiple iterations of the sampling using a preallocated vector this time ##

loopy_sample2 <- function(popn, n, num) {
    result2 <- vector(,num)
    for(i in 1:num) {
        result2[i] <- my_experiment(popn, n)
    }
    return(result2)
}

## Same mean calcs of the sampling but this time on a preallocated list of expected size ##

loopy_sample3 <- function(popn, n, num) {
    result3 <- vector("list", num)
    for (i in 1:num) {
        result3[[i]] <- my_experiment(popn, n)
    }
    return(result3)
}

## Use lapply to run a set number of iterations of the calc means of sample function ##

lapply_sample <- function(popn, n, num) {
    result4 <- lapply(1:num, function(i) my_experiment(popn, n))
    return(result4)
}

## Same using sapply instead ##

sapply_sample <- function(popn, n, num) {
    result5 <- sapply(1:num, function(i) my_experiment(popn, n))
    return(result5)
}

set.seed(12345)
popn <- rnorm(10000)
hist(popn)

n <- 100
num <- 10000

print("Using loops without preallocation on a vector took:" )
print(system.time(loopy_sample1(popn, n, num)))

print("Using loops with preallocation on a vector took:" )
print(system.time(loopy_sample2(popn, n, num)))

print("Using loops with preallocation on a list took:" )
print(system.time(loopy_sample3(popn, n, num)))

print("Using the vectorized sapply function (on a list) took:" )
print(system.time(sapply_sample(popn, n, num)))

print("Using the vectorized lapply function (on a list) took:" )
print(system.time(lapply_sample(popn, n, num)))

## tapply notes

# x <- 1:20
# x
# [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
# y <- factor(rep(letters[1:5], each = 4))
# y
# [1] a a a a b b b b c c c c d d d d e e e e
#Levels: a b c d e
# tapply(x, y, sum)
# a  b  c  d  e 
# 10 26 42 58 74 

## Using 'by' notes ##

# attach(iris)
# by(iris[,1:2], iris$Species, colMeans)

## Using 'replicate' notes ##

# replicate(10, runif(5))