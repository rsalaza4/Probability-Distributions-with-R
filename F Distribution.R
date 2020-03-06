### F DISTRIBUTION ###

# R documentation
help("df")

# Set the first degrees of freedom
df1 <- as.numeric(readline(prompt = "Type the first degrees of freedom value: "))
while(df1 <= 0){
  df1 <- as.numeric(readline(prompt = "Error! The first degrees of freedom value must be greater than 0: "))
}

# Set the second degrees of freedom
df2 <- as.numeric(readline(prompt = "Type the second degrees of freedom value: "))
while(df2 <= 0){
  df2 <- as.numeric(readline(prompt = "Error! The second degrees of freedom value must be greater than 0: "))
}

# Build probability plot
curve(df(x, df1 = df1, df2 = df2),
      from = 0,
      to = 4,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "F Distribution",
      ylim = c(0, 1))
abline(h = 0)
lines(rep(qf(0.95, df1, df2), 2), c(0, df(qf(0.95, df1, df2), df1, df2)))
text(qf(0.95, df1, df2), 0, paste(round(qf(0.95, df1, df2), 2)), adj = c(0.5, 1.1))
text(qf(0.95, df1, df2) - 2, 0.4, "95%")
text(qf(0.95, df1, df2) + 0.1, 0, "5%", adj = c(0.1, -0.5))

# EXAMPLE

curve(df(x, df1 = 19, df2 = 15),
      from = 0,
      to = 4,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "F Distribution",
      ylim = c(0, 1))
abline(h = 0)
lines(rep(qf(0.95, 19, 15), 2), c(0, df(qf(0.95, 19, 15), 19, 15)))
text(qf(0.95, 19, 15), 0, paste(round(qf(0.95, 19, 15), 2)), adj = c(0.5, 1.1))
text(1, 0.4, "95%")
text(2.5, 0, "5%", adj = c(0.1, -0.5))
text(x = 4, y = 0.8, expression("F"[n][","][m] == frac(chi[n]^2/n, chi[m]^2/m)), cex = 1, pos = 2)
