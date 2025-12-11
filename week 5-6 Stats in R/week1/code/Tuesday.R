## Handout 6: Statistical power tests

require(WebPower)

#Cohen's d: Effect size (Difference between 2 means/ SD)

y <- rnorm(51, mean = 1, sd = 1.3)
x <- seq(from = 0, to = 5, by = 0.1)
length(x)
plot(hist(y, breaks = 10))
#mean(y)
#sd(y)

segments(x0=(mean(y)), y0=(0), x1=(mean(y)), y1=40, lty=1, col="blue")
segments(x0=(mean(y)+0.25*sd(y)), y0=(0), x1=(mean(y)+0.25*sd(y)), y1=40, lty=1, col="red")

#Using WebPower
wp.t(d = 0.25, power = 0.8, type = "two.sample", alternative = "two.sided")
res.1 <- wp.t(n1 = seq(20, 300, 20), n2 = seq(20, 300, 20), d = 0.25, type = "two.sample.2n", alternative = "two.sided")
plot(res.1, xvar = "n1", yvar = "power")

#Exercise 1: Bacterial colony statistical power test
res.2 <- wp.t(n1 = seq(10, 300, 10), n2 = seq(10, 300, 10), d = 0.11, alpha = 0.044, type = "two.sample.2n", alternative = "two.sided")
#Power = 0.252 (not nearly enough statistical power, false negative chance of 75%)



##Handout 2: Simple linear functions

rm(list = ls())
x <- seq(from = -5, to = 5, by = 1)
x[[1]]
x[[2]]
x[[9]]
x[[length(x)]]

#Simple linear plot
x <- seq(from = -5, to = 5, by = 0.1)
a <- 2
b <- 1
y <- a + b * x
plot(x, y, col = "white")
segments(0,-10,0,10, lty=3)
segments(-10,0,10,0,lty=3)
abline(a = 2, b = 1)
points(4,0, col="red", pch=19)
points(-2,6, col="green", pch=9)
points(x,y, pch=c(1,2,3,4,5,6,7,8,9,10,11))

#Quadratic plot
y <- x^2
plot(x, y)
segments(0,-30,0,30, lty=3)
segments(-30,0,30,0,lty=3)

plot(x,y)
a <- -2
b <- 3
y <- a + b * x^2
points(x,y, pch=19, col="red")
segments(0,-30,0,30, lty=3)
segments(-30,0,30,0,lty=3)

plot(x,y)
a <- -2
b1 <- 10
b2 <- 3
y <- a + b1 * x + b2 * x^2
points(x,y, pch=19, col="green")
segments(0,-100,0,100, lty=3)
segments(-100,0,100,0,lty=3)

#Exercise 1
