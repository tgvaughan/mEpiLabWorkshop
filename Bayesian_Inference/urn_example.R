## Urn example for lecture.

Nr <- seq(0, 11)

lik <- Nr^2*(11-Nr)/11^3

png("urn_posterior.png", width=800, height=600, pointsize=20)
plot(Nr, lik, 'b', col='blue', lwd=2,
     xlab = expression(paste('Value of ', N[r])),
     ylab = expression(P(N[r] ~ '|' ~ R,B,R)))
dev.off()


png("poissonian.png", width=600, height=600, pointsize=20)
n <- seq(0, 10)
p <- dpois(n, 5)
plot(n, p, 'h', lwd=2, col='blue',
     ylab=expression(P(n)))
points(n, p, lwd=2, col='blue')
dev.off()
