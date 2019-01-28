# install packages
# MASS has mammals data
# install.packages("ggplot2")
install.packages("MASS")

library(MASS)
library(ggplot2)

# view and summarize data

view(mammals)

str(mammals)

mammals

summary(mammals)

# simple ggplot
ggplot(mammals, aes(x=body, y=brain))+ geom_point()

# Adding line
ggplot(mammals, aes(x=body, y=brain))+ 
  geom_point(alpha=1) +
  stat_smooth(method="loess", col ="blue", se =TRUE)

# taking log of body and brain and plotting
ggplot(mammals, aes(x=body, y=brain)) + 
  geom_point(alpha=0.6) +
  coord_fixed() +
  scale_x_log10() +
  scale_y_log10() +
  stat_smooth(method="lm",
              col = "#C42126", 
              se = FALSE, size=1) +
  theme_classic()

ggplot(mammals, aes(x=body, y=brain)) + 
  geom_point(alpha=0.6) +
  coord_fixed() +
  scale_x_log10() +
  scale_y_log10() +
  stat_smooth(method="lm",
              col = "#C42126", 
              se = FALSE, size=1) +
  theme_classic()


