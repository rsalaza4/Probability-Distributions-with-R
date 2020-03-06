### CHI-SQUARE DISTRIBUTION ###

# R documentation
help("dchisq")

# Set the degrees of freedom
df <- as.numeric(readline(prompt = "Type the degrees of freedom value: "))
while(df <= 0){
  df <- as.numeric(readline(prompt = "Error! The degrees of freedom value must be greater than 0: "))
}

# Build probability plot
curve(dchisq(x, df = df),
      from = 5,
      to = 50,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Chi-square Distribution",
      ylim = c(0, 0.08))
abline(h = 0)
lines(rep(qchisq(0.95, df), 2), c(0, dchisq(qchisq(0.95, df), df))) 
text(qchisq(0.95, df), 0, paste(round(qchisq(0.95, df), 2)), adj = c(0.5, 1.1))
text(20, 0.02, "95%")
text(32, 0, "5%", adj = c(0.1, -0.5))

# EXAMPLE

curve(dchisq(x, df = 19),
      from = 5,
      to = 50,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Chi-square Distribution",
      ylim = c(0, 0.08))
abline(h = 0)
lines(rep(qchisq(0.95, 19), 2), c(0, dchisq(qchisq(0.95, 19), 19))) 
text(qchisq(0.95, 19), 0, paste(round(qchisq(0.95, 19), 2)), adj = c(0.5, 1.1))
text(20, 0.02, "95%")
text(32, 0, "5%", adj = c(0.1, -0.5))