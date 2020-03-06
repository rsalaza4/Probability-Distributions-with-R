### LOGNORMAL DISTRIBUTION ###

# R documentation
help("dlnorm")

# Set the mean value
meanlog <- as.numeric(readline(prompt = "Type the mean value: "))

# Set the standard deviation value
sdlog <- as.numeric(readline(prompt = "Type the standard deviation: "))
while(sdlog <= 0){
  sdlog <- as.numeric(readline(prompt = "Error! The standrd deviation must be greater than 0: "))
}

# Build probbility plot
curve(dlnorm(x, meanlog = meanlog, sdlog = sdlog),
      from = 0,
      to = 6,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X>0",
      ylab = "Probability Density",
      main = "Lognormal Distribution",
      ylim = c(0, 0.8))
abline(h = 0)

# EXAMPLE

curve(dlnorm(x, meanlog = 0, sdlog = 1),
      from = 0,
      to = 6,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X>0",
      ylab = "Probability Density",
      main = "Lognormal Distribution",
      ylim = c(0, 0.8))
abline(h = 0)
text(x = 6, y = 0.70, expression(mu == e^(paste((mu[N]), "+", frac(sigma^2, 2)))), cex = 1, pos = 2)
text(x = 6, y = 0.55, expression(sigma^2 == e^(paste((2*mu[N]), "+", (sigma^2)[N] * e^(((sigma^2)[N])-1)))), cex = 1, pos = 2)
text(x = 6, y = 0.4, expression(f(x) == frac(1, x*sigma[N]*sqrt(2*pi))*exp*(-frac((ln(x)-sigma[N])^2, 2*(sigma^2)[N]))), cex = 1, pos = 2)
