### NEGATIVE BINOMIAL DISTRIBUTION ###

# R documentation
help("dnbinom")

# Set the target number of successful trials
size <- as.numeric(readline(prompt = "Type the size: "))

# Set the probability of success in each trial
prob <- as.numeric(readline(prompt = "Type the probability of success in each trial: "))
while(prob < 0 | prob > 1){
  prob <- as.numeric(readline(prompt = "Type the probability of success in each trial: "))
}

# Build probability plot
curve(dnbinom(x, size = size, prob = prob),
      from = size,
      to = 40,
      type = "h",
      lwd = 2,
      xlab = "Number of trials until 3 events",
      ylab = "Probability",
      main = "Negative Binomial Distribution",
      ylim = c(0, 0.1),
      n = 40 - size + 1)
abline(h = 0)

# EXMAPLE

curve(dnbinom(x, size = 3, prob = 0.2),
      from = 3,
      to = 40,
      type = "h",
      lwd = 2,
      xlab = "Number of trials until 3 events",
      ylab = "Probability",
      main = "Negative Binomial Distribution",
      ylim = c(0, 0.08),
      n = 38)
abline(h = 0)
text(x = 40, y = 0.070, expression(µ == frac(r, p)), cex = 1, pos = 2)
text(x = 40, y = 0.055, expression(sigma^2 == frac(r (1-p), p^2)), cex = 1, pos = 2)
text(x = 40, y = 0.040, expression(P(x) == paste((atop(x-1, r-1)), p^r,(1-p)^(x-r))), cex = 1, pos = 2)
