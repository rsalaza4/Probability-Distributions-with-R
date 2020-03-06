### NORMAL DISTRIBUTION ###

# R documentation
help("dnorm")

# Set the mean value
mean <- as.numeric(readline(prompt = "Type the mean (mu): "))

# Set the standard deviation value
sd <- as.numeric(readline(prompt = "Type the standard deviation (sigma): "))
while(sd <= 0){
  sd <- as.numeric(readline(prompt = "Error! sigma must be greater than 0: "))
}

# Build probability plot
curve(dnorm(x, mean = mean, sd = sd),
      from = mean-3*sd, 
      to = mean+3*sd,
      type = "l",
      lwd = 2,
      xlab = "",
      ylab = "Probability Density",
      main = "Normal Distribution")
abline(h = 0)

# EXAMPLE

curve(dnorm(x, mean = 0, sd = 1),
      from = -3, 
      to = 3,
      type = "l",
      lwd = 2,
      xlab = "",
      ylab = "Probability Density",
      main = "Normal Distribution")
abline(h = 0)
text(x = 3, y = 0.38, expression(mu == 0), cex = 1, pos = 2)
text(x = 3, y = 0.34, expression(sigma == 1), cex = 1, pos = 2)
text(x = 3, y = 0.28, expression(f(x) == frac(1, sigma*sqrt(2*pi))*exp*(-frac((x-mu)^2, 2*sigma^2))), cex = 0.9, pos = 2) 
