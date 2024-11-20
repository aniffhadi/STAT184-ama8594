# diamonds visualization

library(ggplot2)
data(diamonds)

ggplot(
  data = diamonds,
  mapping = aes(
    x = carat,
    y = price,
    color = clarity
  )
) +
  geom_jitter(size = 0.5, height = 2) +
  labs(
    x = "Carat (ct)",
    y = "Price ($)",
    color = "Clarity",
    title = "Price of Diamond by Carat and Clarity"
  ) +
  scale_color_manual(
    values = c("#FF0000", "#FFA500",  "#FFFF00", "#008000", "#0000FF", "#800080", "#FF8DA1", "#000000")
  ) +
  theme_bw() +
  theme(
    legend.position = "bottom"
  )

# palmer penguin visualization

library(ggplot2)
library(palmerpenguins)
data(penguins)

ggplot(
  data = penguins,
  mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
    shape = island,
    color = species
  )
) +
  geom_jitter(size = 2, height = 0.7, width = 0.7) +
  labs(
    x = "Flipper Length (mm)",
    y = "Body Mass (g)",
    shape = "Island Origin",
    color = "Species of Penguin",
    title = "Body Mass Penguins by Species by Island by Year"
  ) +
  scale_color_manual(
    values = c("#FF0000", "#00FF00",  "#0000FF")
  ) +
  theme_bw() +
  theme(
    legend.position = "bottom"
  )

# popular baby names visualization

library(dcData)
library(ggplot2)
library(dplyr)
data(BabyNames)

fourNames <- BabyNames %>%
  filter(name == c("Adam", "Elizabeth", "Jeremy", "Mary"))

ggplot(
  data = fourNames,
  mapping = aes(
    x = year,
    y = count
  )
) +
  geom_line(
    aes(size = name, linetype = name, color = name)
  ) +
  labs(
    x = "Year",
    y = "Count",
    title = "Popular Baby Names Throughout the Years"
  ) +
  scale_color_manual(
    values = c("red", "blue", "green", "orange")
  ) + 
  scale_linetype_manual(
    values = c("dotted", "dotdash", "dashed", "solid")
  ) +
  scale_size_manual(
    values = c(1.2, 1.2, 1.2, 1.2)
  ) +
  theme_gray()