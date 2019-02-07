# Remueve todos los objetos creados
rm(list=ls())
Fx = function(x) ((exp(1)^x)/(pi))
Fx2 = function(x) log(pi*x)

puntofijo = function(a,b,err) {
  # Grafico
  x = seq(a,b,0.1)
  #plot(1*x,type="l",col="orange")
  #plot(x,Fx(x),type="l",col="blue")
  #plot(x,Fx2(x),type="l",col="green")
  abline(h=0,v=0,col="red")
  
  if((Fx(a)<a) || (Fx(b)>b)){ #Toca cambiar los signos de la comparacion
    cat("El intervalo no es valido\n")
  }else{
    
    x0 = (a+b)/2;
    
    inf = a
    sup = b
    ite = 0
    xIni = x0
    fxIni = Fx(xIni)
    check = 0
    
    while(abs(xIni-fxIni)>err){
      ite = ite + 1
      
      if(xIni < inf){
        check = 1
      }
      if(check == 0){
        xIni = fxIni
        fxIni = Fx(xIni)
      }else{
        fxIni = xIni
        xIni = Fx2(fxIni)
      }
      error = abs((fxIni-xIni)/fxIni)
      cat(ite,", ",error,"\n")
    }
    cat("Iteraciones =",ite,"Resultado = ",xIni,"\n")
  }
}
  
puntofijo(0,1,10e-8)
# puntofijo(1,2,10e-8)

