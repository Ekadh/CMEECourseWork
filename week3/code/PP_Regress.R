# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script for data visualisation and management using predator-prey data

library(tidyverse)
# Loading csv
ecol_archives <- read.csv("../data/EcolArchives-E089-51-D1.csv")

#Conversion
ecol_archives$Prey.mass[ecol_archives$Prey.mass.unit == "mg"] <- ecol_archives$Prey.mass[ecol_archives$Prey.mass.unit == "mg"] / 1000
ecol_archives$Prey.mass.unit[ecol_archives$Prey.mass.unit == "mg"] <- "g"

# Setting basic plot aesthetics
p <- ggplot(ecol_archives,
            aes(Prey.mass, Predator.mass,
                color = Predator.lifestage))
# Setting points and lm lines (plot raw masses but display axes on a log scale so labels are positive)
p <- p + geom_point(shape = I(3)) + geom_smooth(method = "lm", fullrange = TRUE, se = TRUE) +
  scale_x_log10() + scale_y_log10()
# Setting up facet wrap, labs and theme
p <- p + facet_wrap(Type.of.feeding.interaction ~., ncol = 1, strip.position = "right") +
  labs(x = "Prey mass in grams", y = "Predator mass in grams") +
  theme(
    legend.position = "bottom",
    legend.direction = "horizontal",
    legend.box = "horizontal",
    strip.placement = "outside",
    plot.margin = margin(10, 40, 10, 10),
    legend.text = element_text(size = 8),
    legend.title = element_text(size = 9),
    strip.text = element_text(size = 8)
  ) +
  guides(color = guide_legend(nrow = 1))
print(p)

#Saving the figure
ggsave(filename = "../results/Visualised_regression.pdf", plot = p, width = 8, height = 12)

#Saving the regression results to a csv file
regs <- ecol_archives %>%
  group_by(Type.of.feeding.interaction, Predator.lifestage) %>%
  summarise({
    model <- lm(log(Predator.mass) ~ log(Prey.mass), data = pick(everything()))
    fpstats <- summary(model)
    
    fstat <- fpstats$fstatistic
    

    # Calculates p-value from F-statistic if available, otherwise set to NA
    if (!is.null(fstat) && all(is.finite(fstat))) {
      p_val <- pf(fstat[1], fstat[2], fstat[3], lower.tail = FALSE)
    } else {
      p_val <- NA_real_
    }
    
    tibble(
      slope = coef(model)[2],
      intercept = coef(model)[1],
      R = sqrt(fpstats$r.squared),
      F_stat = if (!is.null(fstat)) fstat[1] else NA_real_,
      p_value = p_val
    )
  }, .groups = "drop")

write.csv(regs, "../results/PP_Regress_Results.csv", row.names = FALSE)

