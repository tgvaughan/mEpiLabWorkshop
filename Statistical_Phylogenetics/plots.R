## Plots for phylogenetics lecture

## Jukes-Cantor
t <- seq(0, 5, length.out=1000)
pSame <- 1/4 + 3/4*exp(-4/3*t)
pDiff <- 1 - pSame

png("jc_probs.png", width=800, height=400, pointsize=20)
par(mar=c(3,2,1,1), mgp=c(2,0.5,0))
plot(t, pSame, 'l', lwd=2, col='blue', ylim=c(0,1),
     xlab='Time (expected substitutions)',
     ylab='Probability')

lines(t, pDiff, lwd=2, col='red')

legend('topright', inset=0.02, c(expression(p[same](t)), expression(p[diff](t))),
       lty=1, lwd=2, col=c('blue','red'))

dev.off()
