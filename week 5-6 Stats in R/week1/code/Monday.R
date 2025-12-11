install.packages("lme4")
library(lme4)
require(lme4)
d <- read.table("../data/SparrowSize.txt", header = TRUE)
head(d)
summary(d)
table(d$Year)
table(table(d$BirdID))
require(dplyr)
require(ggplot2)
BirdIDCount <- d %>% count(BirdID, BirdID, sort = TRUE)
BirdIDCount %>% count(n)

#Exercise 1 solution: How many repeats are there per bird per year

BirdPerYearCount <- d %>% group_by(Year, BirdID) %>% summarise(n_repeats = n())
#OR
BirdPerYearCount <- d %>% group_by(Year, BirdID) %>% count(Year)
#OR
BirdPerYearCount <- d %>% count(Year, BirdID, name = "count")

#Exercise 2 solution: How many individuals did we capture per year for each sex

BirdSexPerYear <- d %>% group_by(Year, Sex.1) %>% count(Year) 
#OR
BirdSexPerYear <- d %>% count(Year, Sex.1, name = "count")

#Exercise 3 solution: Summarising and visualising results

#For question 1: How many repeats per bird per year

BirdPerYearCount <- d %>% count(Year, BirdID, name = "count") %>% count(Year, count, name = "Repeats") 
p <- ggplot(BirdPerYearCount, aes(x = as.factor(Year), y = Repeats, fill = as.factor(count)))
p <- p + geom_bar(stat = "identity") + theme_minimal() + labs(x = "Year", y = "Repeats") + theme(legend.)

#For question2: How many repeats per year for sex

BirdSexPerYear <- d %>% count(Year, Sex.1, name = "count")

p <- ggplot(BirdSexPerYear, aes(x = as.factor(Year), y = count, fill = Sex.1))
p <- p + geom_bar(stat = "identity", position = "dodge") + theme_minimal()



## Handout 2 for Monday

length(d$Tarsus)
hist(d$Tarsus)
mean(d$Tarsus, na.rm = TRUE)
median(d$Tarsus, na.rm = TRUE)
mode(d$Tarsus)

par(mfrow = c(2, 2)) #
hist(d$Tarsus, breaks = 3, col="grey")
hist(d$Tarsus, breaks = 10, col="grey")
hist(d$Tarsus, breaks = 30, col="grey")
hist(d$Tarsus, breaks = 100, col="grey")

d$tarsus_rounded <- round(d$Tarsus, digits = 1)
head(d$Tarsus)

TarsusTally <- d %>% count(Tarsus.rounded, name = "count", sort = TRUE)
TarsusTally <- TarsusTally[!is.na(TarsusTally$Tarsus.rounded), ]
mode <- TarsusTally[[1]][1]
range(d$Tarsus, na.rm = TRUE)
var(d$Tarsus, na.rm = TRUE)

#Calculating z scores

zTarsus <- (TarsusTally$Tarsus - mean(TarsusTally$Tarsus))/sd(TarsusTally$Tarsus)
hist(zTarsus)

znormal <- rnorm(1e+06)
hist(znormal, breaks = 100)
qnorm(c(0.025, 0.975))
pnorm(.Last.value)

##Looking at quartiles

par(mfrow = c(1,2))
hist(znormal, breaks = 100)
abline(v = qnorm(c(0.25, 0.5, 0.75)), lwd = 2)
abline(v = qnorm(c(0.025, 0.975)), lwd = 2, lty = "dashed")
plot(density(znormal))
abline(v = qnorm(c(0.25, 0.5, 0.75)), col = "gray")
abline(v = qnorm(c(0.025, 0.975)), lty = "dotted", col = "black")
abline(h = 0, lwd = 3, col = "blue")
text(2, 0.3, "1.96", col = "red", adj = 0)
text(-2, 0.3, "-1.96", col = "red", adj = 1)


##Sparrow example

boxplot(d$Tarsus~d$Sex.1, col = c("red", "blue"), ylab = "Tarsus length(mm)", xlab = "Sex")




##Handout 3: Data types

d$BirdIDFact <- as.factor(d$BirdID)
str(d$BirdIDFact)
plot(d$Mass~as.factor(d$Year), xlab="Year", ylab="House sparrow body mass(g)")

b <- read.table("../data/BTLD.txt", header = TRUE)
str(b)
mean(b$ClutchsizeAge7, na.rm = TRUE)
b$IDFemale <- as.factor(b$IDFemale)
plot(b$LD.in_AprilDays.~b$Year, ylab="Laying date (April days)", xlab="Year",pch=19, cex=0.3)

#Using ggplot

p <- ggplot(b, aes(x = Year, y = `LD.in_AprilDays.`))
p + geom_jitter(width = 0.2, height = 0, alpha = 0.6) + theme_minimal()

p <- ggplot(b, aes(x = as.factor(Year), y = LD.in_AprilDays.)) +
    geom_violin()

p + stat_summary(fun.data = "mean_sdl", geom = "pointrange")


## Handout 4: Standard errors

rm(list=ls())
d <- read.table("../data/SparrowSize.txt", header=TRUE)
d1 <- subset(d, d$Tarsus!="NA")
seTarsus <- sqrt(var(d1$Tarsus)/length(d1$Tarsus))
seTarsus

d12001 <- subset(d1, d1$Year==2001)
seTarsus2001<-sqrt(var(d12001$Tarsus)/length(d12001$Tarsus))
seTarsus2001

TailLength <- rnorm(500, mean = 3.8, sd = 2)
summary(TailLength)
hist(TailLength)
x <- 1:length(TailLength)
y <- mean(TailLength)+0 * x
plot(x,y, cex=0.03, ylim=c(2,5),xlim=c(0,500), xlab="Sample size n", ylab="Mean of tail length ±SE (m)", col="red")
n <- seq_along(TailLength)
mu <- numeric(length(n))
se <- numeric(length(n))
for (i in seq_along(n)) {
  d <- sample(TailLength, n[i], replace = FALSE)
  mu[i] <- mean(d)
  se[i] <- sd(d) / sqrt(n[i])
}

up<-mu+SE
down<-mu-SE
length(up)

TailLength<-rnorm(201,mean=3.8, sd=2)
length(TailLength)

x<-1:201
y<-mean(TailLength)+0*x

plot(x,y, cex=0.03, ylim=c(3,4.5),xlim=c(0,201), xlab="Sample size n", ylab="Mean of tail length ±SE (m)", col="red")

plot(x,y, cex=0.03, ylim=c(3,4.5),xlim=c(0,201), xlab="Sample size n", ylab="Mean of tail length ±SE (m)", col="red")
points(n,mu,cex=0.3, col="red")
segments(n, up, x1=n, y1=down, lty=1)

# Difficult question
d1 <- subset(d, !is.na(d$Mass))
results = list()
global_mean <- mean(d1$Mass, na.rm = TRUE)
n <- 5:501
mu <- numeric(length(n))
se <- numeric(length(n))
for (i in seq_along(n)) {
  d_sample <- sample(d1$Mass, n[i], replace = FALSE)
  mu[i] <- mean(d_sample)
  se[i] <- sd(d_sample) / sqrt(n[i])
  t <- t.test(d_sample, mu = global_mean)
  results[[as.character(i)]] <- broom::tidy(t) %>% mutate(Sample_size = i, Mean = mu[i], SE = se[i])
}
results <- bind_rows(results, .id = "Test")
Final_results <- results %>% filter(p.value >= 0.05)



##Handout 5: t-test and comparison of means

t.test1 <- t.test(d$Mass ~ d$Sex.1)
d1 <- as.data.frame(head(d, 50))
length(d1$Mass)

t.test2 <- t.test(d1$Mass ~ d1$Sex)
t.test2

#Exercise 1
grand_mean <- mean(d$Wing, na.rm = TRUE)
d$Year <- as.factor(d$Year)
dWing2001 <- d[d$Year == 2001, ]

t.test3 <- t.test(dWing2001$Wing, mu = grand_mean)
t.test4 <- t.test(d$Wing ~ d$Sex.1)
t.test5 <- t.test(d$Tarsus ~ d$Sex.1)

results <- list(
    "Mass vs Sex 1" = t.test1,
    "Mass vs Sex Smaller dataset" = t.test2,
    "One year wing length mean vs overall" = t.test3,
    "Sex vs Wing length overall" = t.test4,
    "Sex vs Tarsus length overall" = t.test5
) %>% purrr::map_dfr(broom::tidy, .id = "Test")
head(results)

#Exercise 2
results <- list()
for (i in unique(d$Year)) {
  sparrow_wings <- subset(d, Year == i)
  t_year <- t.test(sparrow_wings$Wing, mu = grand_mean)
  print(t_year)
  results[[as.character(i)]] <- broom::tidy(t_year) %>% mutate(Year = i)
}
results <- bind_rows(results, .id = "Test")
print(results)

#Exercise 3
SparrowYear <- d %>% group_by(Year) %>% arrange(Year)
head(SparrowYear)
SparrowYear$Year <- as.numeric(SparrowYear$Year)

SparrowSortedEarly <- SparrowYear %>% filter(Year <= 2005)
SparrowSortedLate <- SparrowYear %>% filter(Year >= 2006)

Final_t <- t.test(SparrowSortedEarly$Wing, SparrowSortedLate$Wing)

Final_t <- t.test(Wing ~ YearGroup, data = SparrowYear %>% mutate(YearGroup = ifelse(Year >= 2006, "Late", "Early")))