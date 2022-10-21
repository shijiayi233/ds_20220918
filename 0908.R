############
# Sep 8
############

library(tidyverse)
x = 2
y = c(1,2,3,4)
x = runif(20)#generate 20 random numbers (uniform distribution 0-1 by default)
mean(x)
var(x)

#tibble,factor
example_df=
  tibble(#use tibble to generate dataframe 3x4
    var_numeric = 5:7,
    var_char = c('My','name','is'),
    var_logic = c(T,F,T),
    var_factor = factor(c('male','female','male'))
  );

## set seed to ensure reproducibility
set.seed(1)
## define dataframe containing x and y
plot_df = tibble(
  x = rnorm(1000, sd = .5),
  y = 1 + 2 * x^2 + rnorm(1000)
)
## histogram of x
ggplot(plot_df,aes(x=x))+geom_histogram()
## scatterplot of x and y
ggplot(plot_df,aes(x=x,y=y))+geom_point()
ggsave("scatter_plot.pdf", height = 4, width = 6)