### CAUCHY DISTRIBUION ###

# R documentation
help("dcauchy")

# Set the location value
location <- as.numeric(readline(prompt = "Type the location value: "))

# Set the scale value
scale <- as.numeric(readline(prompt = "Type the scale value: "))
while(scale <= 0){
  scale <- as.numeric(readline(prompt = "Error! The scale value must be greater than 0: "))
}

# Build probability plot
curve(dcauchy(x, location = location, scale = scale),
      from = location - 5,
      to = location + 5,
      type = "l",
      lwd = 2,
      xlab = "",
      ylab = "Probability Density",
      main = "Cauchy Distribution")
abline(h = 0)

# EXAMPLE

curve(dcauchy(x, location = 0, scale = 1),
      from = -5,
      to = 5,
      type = "l",
      lwd = 2,
      xlab = "",
      ylab = "Probability Density",
      main = "Cauchy Distribution")
abline(h = 0)
text(x = 5, y = 0.30, expression(mu == "undefined"), cex = 1, pos = 2)
text(x = 5, y = 0.25, expression(sigma^2 == "undefined"), cex = 1, pos = 2)
text(x = 5, y = 0.20, expression(f(x) == (frac(1, pi)) * (frac(gamma, (x-x[0])^2 + gamma^2))), cex = 1, pos = 2)

help("dmultinom")
