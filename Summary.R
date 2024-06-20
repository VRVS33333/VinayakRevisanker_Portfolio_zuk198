## Introduction
###This article presents the analysis of methane and CO2 levels in a furnace over time.

## Methods
###Data preprocessing steps and analysis methods.

## Results
### CO2 and Methane Levels Over Time

library(tidyverse)
co2_plot <- ggplot2::ggsave("results/co2_plot.png")
methane_plot <- ggplot2::ggsave("results/methane_plot.png")

co2_plot
methane_plot