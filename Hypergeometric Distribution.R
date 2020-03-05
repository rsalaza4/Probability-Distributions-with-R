### HYPERGEOMETRIC DISRIBUTION ###

# R documentation
help("dhyper")

# Set m
m <- as.numeric(readline(prompt = "Type the m value: "))

# Set n
n <- as.numeric(readline(prompt = "Type the n value: "))

# Set k
k <- as.numeric(readline(prompt = "Type the k value: "))

# Build probability plot
curve(dhyper(x, m = m, n = n, k = k),
      from = 0,
      to = k,
      type = "h",
      lwd = 2,
      xlab = "Elements in class",
      ylab = "Probability",
      main = "Hypergeometric Distribution",
      ylim = c(0, 0.5),
      n = k+1)
abline(h = 0)
text(x = k, y = 0.45, expression(mu == kp), cex = 1, pos = 2)
text(x = k, y = 0.40, expression(sigma^2 == kp(1-p)), cex = 1, pos = 2)
text(x = k, y = 0.30, expression(P(x) == frac(paste((atop((n+m)*p, x)),(atop((n+m)*(1-p), k-x))), (atop(n+m, k)))), cex = 1, pos = 2)

# EXAMPLE

curve(dhyper(x, m = 4, n = 7, k = 4),
      from = 0,
      to = 4,
      type = "h",
      lwd = 2,
      xlab = "Elements in class",
      ylab = "Probability",
      main = "Hypergeometric Distribution",
      ylim = c(0, 0.5),
      n = 5)
abline(h = 0)
text(x = 4, y = 0.45, expression(mu == kp), cex = 1, pos = 2)
text(x = 4, y = 0.40, expression(sigma^2 == kp(1-p)), cex = 1, pos = 2)
text(x = 4, y = 0.30, expression(P(x) == frac(paste((atop((n+m)*p, x)),(atop((n+m)*(1-p), k-x))), (atop(n+m, k)))), cex = 1, pos = 2)

