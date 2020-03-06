### UNIFORM DISTRIBUTION ###

# R documentation
help("dunif")

# Set the lower limit value
min <- as.numeric(readline(prompt = "Type the lower limit: "))

# Set the upper limit value
max <- as.numeric(readline(prompt = "Type the upper limit: "))

# Build probability plot
curve(dunif(x, min = min, max = max),
      from = min - 0.5,
      to = max + 0.5,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Uniform Distribution",
      ylim = c(0, 1.1))
abline(h = 0)

# EXAMPLE

curve(dunif(x, min = 0, max = 1),
      from = - 0.8,
      to = 1.8,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Uniform Distribution",
      ylim = c(0, 1.2))
abline(h = 0)
text(x = 1.8, y = 1.1, expression(mu == frac(b+a, 1)), cex = 1, pos = 2)
text(x = 1.8, y = 0.9, expression(sigma^2 == frac(1, 12)*(b-a)^2), cex = 1, pos = 2)
text(x = 1.8, y = 0.7, expression(paste(f(x) == frac(1, b-a), a <= x, "" <= b)), cex = 1, pos = 2)
