# Remueve todos los objetos creados
rm(list=ls())

Fx <- function(x) ((exp(1)^x) - (pi*x))
F1x <- function(x) ((exp(1)^x)-pi)
# Metodo de la Secante

secante <- function(x0,x1, err) {
  x = (Fx(x1)*x0-Fx(x0)*x1)/(Fx(x1)-Fx(x0))
  error = 1
  it = 0
  while (error > err) {
    it = it + 1
    x0 = x1
    x1 = x
    x = (Fx(x1)*x0-Fx(x0)*x1)/(Fx(x1)-Fx(x0))
    if (Fx(x) == 0) break
    error = abs(Fx(x)/F1x(x))
    cat("X=",x,"\t","E=",error,"\t","Iteracion=",it,"\n")
  }
}
secante(0, 1, 10e-8)
secante(1, 2, 10e-8)