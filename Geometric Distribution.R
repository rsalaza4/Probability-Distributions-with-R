### GEOMETRIC DISTRIBUTION ###

# R documentation
help("dgeom")

# Set the probability of success in each trial
prob <- as.numeric(readline(prompt = "Type the probability of success in each trial: "))
while(prob < 0 | prob > 1){
  prob <- as.numeric(readline(prompt = "Type the probability of success in each trial: "))
}

# Build probability plot
curve(dgeom(x, prob = prob),
      from = 0,
      to = 40,
      type = "h",
      lwd = 2,
      xlab = "Items extracted until first success",
      ylab = "Probability",
      main = "Geometric Distribution",
      ylim = c(0, prob),
      n = 41)
abline(h = 0)

# EXAMPLE

curve(dgeom(x, prob = 0.15),
      from = 0,
      to = 40,
      type = "h",
      lwd = 2,
      xlab = "Items extracted until first success",
      ylab = "Probability",
      main = "Geometric Distribution",
      ylim = c(0, 0.16),
      n = 41)
abline(h = 0)
text(x = 40, y = 0.14, expression(mu == frac(1, p)), cex = 1, pos = 2)
text(x = 40, y = 0.11, expression(sigma^2 == frac(1-p, p^2)), cex = 1, pos = 2)
text(x = 40, y = 0.08, expression(P(x) == p(1-p)^(x-1)), cex = 1, pos = 2)
