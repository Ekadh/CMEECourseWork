load("../data/KeyWestAnnualMeanTemperature.RData")
#head(ats)
#class(ats)
#plot(ats)

set.seed(12345)

unchanged_cor <- cor(ats$Year, ats$Temp)

iterations <- 50000
final_cor <- numeric(iterations)

for (i in 1:iterations) {
    shuffle <- sample(ats$Temp)
    final_cor[i] <- cor(ats$Year, shuffle)
}

hist(final_cor)

#Normal p-value calc returns 0 even when quintupling iterations 
p_value <- mean(abs(final_cor) >= abs(unchanged_cor))

#One sided p-value adds 1 so even if no final_cor > unchanged_cor exists, it becomes 1/iterations
p_value_one_sided <- (sum(final_cor >= unchanged_cor) + 1) / (iterations + 1)

#Same as one-sided but using absolute values to compute both tails of the distribution (better)
p_value_two_sided <- (sum(abs(final_cor) >= abs(unchanged_cor)) + 1) / (iterations + 1)
