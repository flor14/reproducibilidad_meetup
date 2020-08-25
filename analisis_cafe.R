library(tidyr)
library(ggplot2)

coffe_rantings <- read.csv("C:/User/Florencia/codigo/coffee_ratings.csv")

coffee_ratings %>%
  pivot_longer(cols=aroma:moisture,
               names_to="caracteristicas_cafe",
               values_to="value") %>%
  
  ggplot(aes(value, total_cup_points))+
  geom_smooth(method= "gam", span=0.3, color='purple')+
  facet_wrap(~caracteristicas_cafe, scale="free_y")
