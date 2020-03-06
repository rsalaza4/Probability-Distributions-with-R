### POISSON DISTRIBUTION ###

# R documentation
help("dpois")

# Set the mean value per time unit
lambda <- as.numeric(readline(prompt = "Type the lambda value: "))
while(lambda < 0){
  lambda <- as.numeric(readline(prompt = "Error! Lambda must be non-negative: "))
}

# Build probability plot
curve(dpois(x, lambda = lambda),
      from = 0,
      to = 20,
      type = "h",
      lwd = 2,
      xlab = "Number of successful experiments per unit",
      ylab = "Probability",
      main = "Poisson Distribution",
      ylim = c(0, 0.35),
      n = 21)
abline(h = 0)

# EXAMPLE

curve(dpois(x, lambda = 5),
      from = 0,
      to = 20,
      type = "h",
      lwd = 2,
      xlab = "Number of successful experiments per unit",
      ylab = "Probability",
      main = "Poisson Distribution",
      ylim = c(0, 0.20),
      n = 21)
abline(h = 0)
text(x = 20, y = 0.175, expression(mu == lambda), cex = 1, pos = 2)
text(x = 20, y = 0.150, expression(sigma^2 == lambda), cex = 1, pos = 2)
text(x = 20, y = 0.120, expression(P(x) == frac(e^-lambda*lambda^x, paste(x, "!"))), cex = 1, pos = 2)