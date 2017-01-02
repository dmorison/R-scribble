library(ggplot2)
getwd()
# setwd("/Users/davem/R_scribble/")

myFunction <- function(x) {
  y <- rep(NULL, length(x))
  for (i in x) {
    calc <- i ^ 3
    y <- c(y, calc)
  }
  print(y)
  
  df <- data.frame(x, y)
  # print(df)
  
  # qplot(data = df, x = df$x, y = df$y)
  # qplot(x = x, y = y)
  p <- ggplot(data = df, aes(x = x, y = y)) +
    geom_point() +
    geom_line()
  p
}

w <- c(-3, -2, -1, 0, 1, 2, 3)
z <- rnorm(10)
myFunction(w)
