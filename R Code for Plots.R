
#Code for plots for 7641 Homework 2 - Randomized Optimization
library(tidyverse)

#loading traveling salesman results - compiled in Excel and saved as a csv file
tsp <- read.csv(file.choose(), header = TRUE)

#plotting performance of the 4 algorithms
ggplot(tsp, aes(x = iterations, y = fitness, color = Alg)) +
  geom_line() +
  theme_light() +
  theme(legend.title = element_blank(),
        legend.position = 'bottom') +
  labs(title = 'Traveling Salesman Performance',
        y = 'Fitness',
        x = 'Iterations')

#loading data for parameters for TSP GA
tsp_ga <- read.csv(file.choose(), header = TRUE)

#plotting performance against parameters
ggplot(tsp_ga, aes(x = GA_Param, y = fitness,group = 1)) +
  geom_line(color = 'red') +
  theme_gray() +
  theme(legend.title = element_blank(),
        legend.position = 'bottom') +
  labs(title = 'GA Performance by Parameter',
       y = 'Fitness',
       x = 'Parameters (mate/mutate)')

#plotting time against parameters
ggplot(tsp_ga, aes(x = GA_Param, y = time, group = 1)) +
  geom_line(color = 'blue') +
  theme_gray() +
  theme(legend.title = element_blank(),
        legend.position = 'bottom') +
  labs(title = 'GA Time by Parameter',
       y = 'Time',
       x = 'Parameters (mate/mutate)')
