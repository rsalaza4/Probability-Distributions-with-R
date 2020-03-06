# BETA DISTRIBUTION ###

# R documentation
help("dbeta")

# Set the shape value
shape1 <- as.numeric(readline(prompt = "Type the shape1 value: "))
while(shape1 <= 0){
  shape1 <- as.numeric(readline(prompt = "Error! The shape1 value must be greater than 0: "))
}

# Set the shape2 value
shape2 <- as.numeric(readline(prompt = "Type the shape2 value: "))
while(shape2 <= 0){
  shape2 <- as.numeric(readline(prompt = "Error! The shape2 value must be greater than 0: "))
}

curve(dbeta(x, shape1 = shape1, shape2= shape2),
      from = 0,
      to = 1,
      type ="l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Beta Distribution",
      ylim = c(0, 3))
abline(h = 0)

# EXAMPLE

curve(dbeta(x, shape1 = 3, shape2= 2),
      from = 0,
      to = 1,
      type ="l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Beta Distribution",
      ylim = c(0, 2))
abline(h = 0)
text(x = 0, y = 1.9, expression(mu == frac(a, a+b)), cex = 1, pos = 4)
text(x = 0, y = 1.6, expression(sigma^2 == frac(ab, paste((a+b)^2, (a+b+1)))), cex = 1, pos = 4)
text(x = 0, y = 1.3, expression(f(x) == k*x^(a-1)*(1-x)^(b-1)), cex = 1, pos = 4)
