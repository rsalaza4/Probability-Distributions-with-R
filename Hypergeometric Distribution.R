### HYPERGEOMETRIC DISRIBUTION ###

# R documentation
help("dhyper")

# Set the number of items in the population that are classified as successes
m <- as.numeric(readline(prompt = "Type the m value: "))
while(m%%1 != 0 | m < 0){
  m <- as.numeric(readline(prompt = "Error! m must be an integer number greater than 0: "))
}

# Set the number of items in the population that are not classified as successes
n <- as.numeric(readline(prompt = "Type the n value: "))
while(n%%1 != 0 | n < 0){
  n <- as.numeric(readline(prompt = "Error! n must be an integer number greater than 0: "))
}

# Set the number of items in the sample that are classified as successes
k <- as.numeric(readline(prompt = "Type the k value: "))
while(k%%1 != 0 | k < 0 | k > (m+n)){
  k <- as.numeric(readline(prompt = "Error! k must be an integer number greater than 0 and lower than (m+n): "))
}

# Build probability plot
curve(dhyper(x, m = m, n = n, k = k),
      from = 0,
      to = k,
      type = "h",
      lwd = 2,
      xlab = "Elements in class",
      ylab = "Probability",
      main = "Hypergeometric Distribution",
      ylim = c(0, 1),
      n = k+1)
abline(h = 0)

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

