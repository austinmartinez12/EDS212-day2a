##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                                                            ~~
##                        PARTIAL DARIVATIVE PRACTICE                       ----
##                                                                            ~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library(tidyverse)
library(ggplot2)

#defineing function
eq1 <- function(x) {
  3 * x^2 + 4
}
#create values to equalate function over
my_data_range <- data.frame(x= c(1,100))

#plot as continuios curve using 'geom_function()
ggplot(data= my_data_range, aes( x= x)) + 
  geom_function(fun = eq1)

#..................example plotting darivatives..................
#create new function
ct <- function(t){
  t^2
}

#create data frame with range of values
my_data_range <- data.frame(t= c(-5, 5))

#plot it
ggplot(data = my_data_range, aes(x=t)) + geom_function(fun=ct)

dc_dt <- D(expr = expression(t^3), name = "t")
dc_dt

dc_dt_fun <- function(t){
  3 * t^2
}

ggplot(data = my_data_range, aes(x = t)) + 
  geom_function(fun = ct, color = "red") +
  geom_function(fun = dc_dt_fun, color = "blue")

#......................partial derivatives.......................
#new expression
f_xyz <- expression(2* x * y - 3 * x^2 * z^3)

#partial derivative with respect to x
df_dx <- D(expr = f_xyz, name = "x")
df_dx
df_dz <- D(expr = f_xyz, name = "z")
df_dz

