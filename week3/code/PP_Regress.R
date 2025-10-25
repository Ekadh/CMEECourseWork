library(tidyverse)
# Loading csv
ecol_archives <- read.csv("../data/EcolArchives-E089-51-D1.csv")
# Setting basic plot aesthetics
p <- ggplot(ecol_archives, aes(log(Prey.mass), log(Predator.mass), color = Predator.lifestage))
# Setting points and lm lines
p <- p + geom_point(shape = I(2)) + geom_smooth(method = "lm", fullrange = TRUE)
# Setting up facet wrap, labs and theme
p <- p + facet_wrap(.~ Type.of.feeding.interaction) + labs(x = "Prey mass in grams", y = "Predator mass in grams") + theme_minimal()
p