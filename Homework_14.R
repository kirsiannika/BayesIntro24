#From GitHub (12.5.24), exercise

#load packages

library(knitr)
library(ggplot2)
library(tidyr)

x <- rnorm(1000, 100, 20)
y <- rnorm(1000, 90, 20)
dat <- data.frame(x, y)

dat

head(dat)

dat_long <- data.frame(group = c(rep("x", 1000), rep("y", 1000)), 
                       val = c(x, y))

dat_long


#https://www.geeksforgeeks.org/draw-multiple-overlaid-histograms-with-ggplot2-package-in-r/ (12.05.24)

ggplot(dat_long, aes(x = val, fill = group)) +
  geom_histogram(position = "identity", alpha = 0.3, bins = 50)



