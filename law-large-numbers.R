library(ggplot2)

N <- 10000
count <- 0
li <- rep(NULL, N)

for (i in 1:N) {
  var <- rnorm(1, mean = 0, sd = 1)
  li <- c(li, var)
  
  if (var > -1 & var < 1) {
    count <- count + 1
  }
}

exp <- count / N

df <- data.frame(li)

summary(df)
exp # exp => 0.682

p <- ggplot(data = df, aes(x = seq_along(df$li), y = li)) + geom_point()
p

d <- ggplot(data = df, aes(x = li)) + geom_density(fill = "blue")
d

b <- ggplot(data = df, aes(x = seq_along(df$li), y = li)) +
  # geom_jitter() +
  geom_boxplot(alpha = 0.7)
b
