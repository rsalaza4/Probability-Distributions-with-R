### BINOMIAL DISTRIBUTION ###

# R documentation
help("dbinom")

# Set the size value
size <- as.numeric(readline(prompt = "Type the size value: "))
while(size%%1 != 0 | size <= 0){
  size <- as.numeric(readline(prompt = "Error! The size must be an integer greater than 0: "))
}

# Set the probability of success
prob <- as.numeric(readline(prompt = "Type the probability of success value: "))
while(prob < 0 | prob > 1){
  prob <- as.numeric(readline(prompt = "Error! The probability of success must greater than 0 and less than 1: "))
}

# Build probability plot
curve(dbinom(x, size = size, prob = prob),
      from = 0,
      to = 30,
      type = "h",
      lwd = 2,
      xlab = "Number of successful experiments",
      ylab = "Probability",
      main = "Binomial Distribution",
      n = 31)
abline(h = 0)

# EXAMPLE

curve(dbinom(x, size = 120, prob = 0.05),
      from = 0,
      to = 30,
      type = "h",
      lwd = 2,
      xlab = "Number of successful experiments",
      ylab = "Probability",
      main = "Binomial Distribution",
      n = 31)
abline(h = 0)
text(x = 30, y = 0.15, expression(mu == np), cex = 1, pos = 2)
text(x = 30, y = 0.12, expression(sigma^2 == np(1-p)), cex = 1, pos = 2)
text(x = 30, y = 0.09, expression(P(X = x) == (atop(n, x))*p^x*(1-p)^(n-x)), cex = 1, pos = 2)
text(x = 30, y = 0.06, expression((atop(n, x)) == frac(paste(n, "!"), paste(x, "!")*paste((n-x), "!"))), cex = 1, pos = 2)
text(x = 30, y = 0.03, expression(paste(n, "!") == "n x (n-1) x (n-2) x ... x 2 x 1"), cex = 1, pos = 2)
