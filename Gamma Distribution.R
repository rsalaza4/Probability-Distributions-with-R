### GAMMA DISTRIBUTION ###

# R documentation
help("dgamma")

# Set the shape value
shape <- as.numeric(readline(prompt = "Type the shape value: "))
while(shape <= 0){
  shape <- as.numeric(readline(prompt = "Error! The shape value must be greater than 0: "))
}

# Set the rate value
rate <- as.numeric(readline(prompt = "Type the rate value: "))
while(rate <= 0){
  rate <- as.numeric(readline(prompt = "Error! The rate value must be greater than 0: "))
}

# Build probability plot
curve(dgamma(x, shape = shape, rate = rate),
      from = 0,
      to = 10,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Gamma Distribution",
      ylim = c(0, 0.4))
abline(h = 0)

# EXAMPLE

curve(dgamma(x, shape = 3, rate = 1),
      from = 0,
      to = 10,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Gamma Distribution",
      ylim = c(0, 0.4))
abline(h = 0)
text(x = 10, y = 0.35, expression(mu == frac(r, lambda)), cex = 1, pos = 2)
text(x = 10, y = 0.27, expression(sigma^2 == frac(r, sigma^2)), cex = 1, pos = 2)
text(x = 10, y = 0.20, expression(f(x) == frac(1, paste((r-1),"!"))*lambda^r*x^(r-1)*e^-(lambda*x)), cex = 1, pos = 2)