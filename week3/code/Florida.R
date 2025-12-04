# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script that looks at the correlation between temperatures and years in Key West

rm(list = ls())

load("../data/KeyWestAnnualMeanTemperature.RData")
#head(ats)
#class(ats)
#plot(ats)

set.seed(12345)

unchanged_cor <- cor(ats$Year, ats$Temp)

#A function to shuffle temperatures and calculate the p-value
permutation_test <- function(data, iterations = 50000) {
    unchanged_cor <- cor(data$Year, data$Temp)
    final_cor <- numeric(iterations)
    
    for (i in 1:iterations) {
        shuffle <- sample(data$Temp)
        final_cor[i] <- cor(data$Year, shuffle)
    }
    #Normal p-value calc returns 0 even when quintupling iterations 
    p_value <- mean(abs(final_cor) >= abs(unchanged_cor))
    #One sided p-value adds 1 so even if no final_cor > unchanged_cor exists, it becomes 1/iterations
    p_value_one_sided <- (sum(final_cor >= unchanged_cor) + 1) / (iterations + 1)
    #Same as one-sided but using absolute values to compute both tails of the distribution (better)
    p_value_two_sided <- (sum(abs(final_cor) >= abs(unchanged_cor)) + 1) / (iterations + 1)
    
  return(list(
    final_cor = final_cor,
    unchanged_cor = unchanged_cor,
    p_value = p_value,
    p_value_one_sided = p_value_one_sided,
    p_value_two_sided = p_value_two_sided
  ))
}

#Histogram plot for correlation coefficients
results <- permutation_test(ats, iterations = 50000)
hist(results$final_cor, xlab = "Correlation coefficients", ylab = "Count", main = "")