library(tidyverse)
gapminder <- read_csv("data/gapminder.csv") 
gapminder_A <- filter(gapminder, country == "Australia")


gapminder_plot <- ggplot(
  data = gapminder_A, 
  mapping = aes(y = pop, x = year, size = gdpPercap, colour = country)
) + geom_point() + 
  labs(title = "A graph about Australia", 
       x = "Year", 
       y = "Population",
       caption = "Data source: Gapminder") + 
  ylim(0, NA) +
  theme(legend.position="bottom",
        legend.title = element_text(colour="black", size=12, face="bold"),
        axis.title.x = element_text(face="bold"),
        axis.title.y = element_text(face="bold"))