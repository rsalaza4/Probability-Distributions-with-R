### EXPONENTIAL DISTRIBUTION ###

# R documentation
help("dexp")

# Set the rate value
rate <- as.numeric(readline(prompt = "Type the rate value: "))
while(rate < 0){
  rate <- as.numeric(readline(prompt = "Error! Rate must be non-negative: "))
}

# Build probability plot
curve(dexp(x, rate = rate),
      from = 0,
      to = 5,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Exponential Distribution",
      ylim = c(0, rate))
abline(h = 0)

# EXAMPLE

curve(dexp(x, rate = 1),
      from = 0,
      to = 5,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Exponential Distribution",
      ylim = c(0, 1))
abline(h = 0)
text(x = 5, y = 0.8, expression(mu == frac(1, lambda)), cex = 1, pos = 2)
text(x = 5, y = 0.6, expression(sigma^2 == frac(1, lambda^2)), cex = 1, pos = 2)
text(x = 5, y = 0.4, expression(f(x) == lambda*e^-(lambda*x)), cex = 1, pos = 2)