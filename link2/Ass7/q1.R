heights <- rnorm(1000, 1.70, 0.1)

plot(density(heights), type='l')

lines(density(rnorm(10000, 1.70, 0.1)), type='l', col='red')

print(qnorm(c(0.05, 0.90), 1.70, 0.1))

percentiles <- seq(0, 1.0, 0.01)
print(qnorm(percentiles))

z_seq <- seq(0, 1, 0.05)
print(pnorm(z_seq))
