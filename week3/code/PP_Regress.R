# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: A script for data visualisation and management using predator-prey data

library(tidyverse)

# Loading and converting data
load_and_convert_data <- function(filepath) {
  data <- read.csv(filepath)
  # Converting mg to g
  data$Prey.mass[data$Prey.mass.unit == "mg"] <- 
    data$Prey.mass[data$Prey.mass.unit == "mg"] / 1000
  data$Prey.mass.unit[data$Prey.mass.unit == "mg"] <- "g"
  return(data)
}

#Creating regression plot
create_plot <- function(data) {
  p <- ggplot(data, aes(Prey.mass, Predator.mass, color = Predator.lifestage)) +
    geom_point(shape = I(3)) + 
    geom_smooth(method = "lm", fullrange = TRUE, se = TRUE) +
    scale_x_log10() + scale_y_log10() +
    facet_wrap(Type.of.feeding.interaction ~., ncol = 1, strip.position = "right") +
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
  return(p)
}

#Calculating and storing regression statistics
calculate_stats <- function(data) {
  regs <- data %>%
    group_by(Type.of.feeding.interaction, Predator.lifestage) %>%
    summarise({
      model <- lm(log(Predator.mass) ~ log(Prey.mass), data = pick(everything()))
      fpstats <- summary(model)
      fstat <- fpstats$fstatistic
      
      p_val <- if (!is.null(fstat) && all(is.finite(fstat))) {
        pf(fstat[1], fstat[2], fstat[3], lower.tail = FALSE)
      } else {
        NA_real_
      }
      
      tibble(
        slope = coef(model)[2],
        intercept = coef(model)[1],
        R = sqrt(fpstats$r.squared),
        F_stat = if (!is.null(fstat)) fstat[1] else NA_real_,
        p_value = p_val
      )
    }, .groups = "drop")
  return(regs)
}

#Main execution
data <- load_and_convert_data("../data/EcolArchives-E089-51-D1.csv")
plot <- create_plot(data)
print(plot)

#Saving the figure and results
ggsave(filename = "../results/Visualised_regression.pdf", plot = plot, width = 8, height = 12)

results <- calculate_stats(data)
write.csv(results, "../results/PP_Regress_Results.csv", row.names = FALSE)
