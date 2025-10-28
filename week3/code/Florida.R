load("../data/KeyWestAnnualMeanTemperature.RData")
#head(ats)
#class(ats)
#plot(ats)
unchanged_cor <- cor(ats$Year, ats$Temp)

iterations <- 10000
final_cor <- numeric(iterations)

for (i in 1:iterations) {
    shuffle <- sample(ats$Temp)
    final_cor[i] <- cor(ats$Year, shuffle)
}

