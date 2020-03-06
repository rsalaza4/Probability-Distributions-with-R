### WEIBULL DISTRIBUTION ###

# R documentation
help("dweibull")

# Set the shape value
shape <- as.numeric(readline(prompt = "Type the shape value: "))
while(shape <= 0){
  shape <- as.numeric(readline(prompt = "Error! The shape value must be greater than 0: "))
}

# Set the scale value
scale <- as.numeric(readline(prompt = "Type the scale value: "))
while(scale <= 0){
  scale <- as.numeric(readline(prompt = "Error! The scale value must be greater than 0: "))
}

# Build probability plot
curve(dweibull(x, shape = shape, scale = scale),
      from = 0,
      to = 6,
      type = "l",
      lwd = 2,
      xlab = "Probability Density",
      ylab = "Random Variable X",
      main = "Weibull Distribution",
      ylim = c(0, 0.6))
abline(h = 0)

# EXAMPLE

curve(dweibull(x, shape = 2, scale = 2.5),
      from = 0,
      to = 6,
      type = "l",
      lwd = 2,
      xlab = "Probability Density",
      ylab = "Random Variable X",
      main = "Weibull Distribution",
      ylim = c(0, 0.6))
abline(h = 0)
text(x = 6, y = 0.55, expression(mu == lambda*Gamma*(1+frac(1, k))), cex = 1, pos = 2)
text(x = 6, y = 0.46, expression(sigma^2 == lambda^2*(Gamma*(1+frac(2, k))-Gamma^2*(1+frac(1, k)))), cex = 1, pos = 2)
text(x = 6, y = 0.38, expression(Gamma(n) == paste((n-1), "!")), cex = 1, pos = 2)
text(x = 6, y = 0.28, expression(f(x) == frac(k, lambda)*(frac(x, lambda))^(k-1)*e^(-x/lambda)^k), cex = 1, pos = 2)