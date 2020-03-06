### STUDENT'S t DISTRIBUTION ###

# R documentation
help("dt")

# Set the degrees of freedom
df <- as.numeric(readline(prompt = "Type the degrees of freedom value: "))
while(df <= 0){
  df <- as.numeric(readline(prompt = "Error! The degrees of freedom value must be greater than 0: "))
}

# Build probability plot
curve(dt(x, df = df),
      from = -5,
      to = 5,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Student's t Distribution",
      ylim = c(0, 0.5))
abline(h = 0)

# EXAMPLE

curve(dt(x, df = 19),
      from = -5,
      to = 5,
      type = "l",
      lwd = 2,
      xlab = "Random Variable X",
      ylab = "Probability Density",
      main = "Student's t Distribution",
      ylim = c(0, 0.5))
abline(h = 0)
lines(rep(qt(0.95, 19), 2), c(0, dt(qt(0.95, 19), 19)))
text(qt(0.95, 19), 0, paste(round(qt(0.95, 19), 2)), adj = c(0.5, 1.1))
text(0, 0.2, "95%")
text(2, 0, "5%", adj = c(0.1, -0.5))