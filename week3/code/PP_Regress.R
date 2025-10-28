library(tidyverse)
# Loading csv
ecol_archives <- read.csv("../data/EcolArchives-E089-51-D1.csv")
# Setting basic plot aesthetics
p <- ggplot(ecol_archives,
            aes(Prey.mass, Predator.mass,
                color = Predator.lifestage))
# Setting points and lm lines (plot raw masses but display axes on a log scale so labels are positive)
p <- p + geom_point(shape = I(3)) + geom_smooth(method = "lm", fullrange = TRUE) +
  scale_x_log10() + scale_y_log10()
# Setting up facet wrap, labs and theme
p <- p + facet_wrap(Type.of.feeding.interaction ~., ncol = 1, strip.position = "right") +
  labs(x = "Prey mass in grams", y = "Predator mass in grams") +
  theme(legend.position = "bottom",
        legend.direction = "horizontal",
        legend.box = "horizontal",
        strip.placement = "outside",
        plot.margin = margin(10, 40, 10, 10)
  )
print(p)

regs <- ecol_archives %>%
  group_by(Type.of.feeding.interaction, Predator.lifestage) %>%
  summarise({
    model <- lm(log(Predator.mass) ~ log(Prey.mass), data = cur_data())
    fpstats <- summary(model)
    tibble(
      slope = coef(model)[2],
      intercept = coef(model)[1],
      R = sqrt(fpstats$r.squared),
      F_stat = fpstats$fstatistic[1],
      p_value = fpstats$coefficients[2, 4]
    )
  })

write.csv(regs, "../results/PP_Regress_Results.csv", row.names = FALSE)

