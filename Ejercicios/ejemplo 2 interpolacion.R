require(PolynomF)
xi=c(0,1,2,3)
yi=c(1/2,1,7,25)

polyAjuste = poly.calc(xi,yi)
print(polyAjuste)

plot(xi,yi, pch = 19, cex=1.5, col= "red")
curve(polyAjuste,add=T,lty=3, lwd=5)