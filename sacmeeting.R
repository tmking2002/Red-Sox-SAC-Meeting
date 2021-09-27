library(tidyverse)
library(ggplot2)
library(Lahman)

redsox <- Pitching %>% 
  filter(yearID == 2004) %>% 
  filter(teamID == "BOS")

boxplot <- ggplot(redsox,
                  aes(x = teamID,
                  y = HR)) +
  geom_boxplot()

violin_plot <- ggplot(redsox,
                  aes(x = teamID,
                      y = HR)) +
  geom_violin(color = "navy"
              fill = "red")

violin_plot +
  labs(title = "Distribution of Red Sox HRs Allowed",
       subtitle = "Red Sox 2004 World Series Season",
       caption = "Data Vix by NCSU SAC | Data from Lahman Package")
