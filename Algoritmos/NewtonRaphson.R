# Remueve todos los objetos creados
rm(list=ls())

Fx <- function(x) ((exp(1)^x) - (pi*x))
F1x <- function(x) ((exp(1)^x)-pi)

newton <- function(a,b,err) {
  
  # Grafico
  x = seq(a,b,0.1)
  plot(1*x,type="l",col="orange")
  plot(x,Fx(x),type="l",col="blue")
  abline(h=0,v=0,col="red")
  
  x0 = (a+b)/2;
  it = 0
  
  repeat{
    correccion = Fx(x0)/F1x(x0)
    x1 = x0 - correccion
    dx = abs(correccion)
    x0 = x1
    it = it+1
    # until
    if(dx <= err ) break;
  }
  cat("Iteraciones = ", it, " Resultado = ", x1, "\n")
}

newton(0,1,10e-8)
newton(1,2,10e-8)