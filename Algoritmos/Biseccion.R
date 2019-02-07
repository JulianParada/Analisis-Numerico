# Remueve todos los objetos creados
rm(list=ls())
Fx = function(x) ((x*((exp(1))^x))-pi)
Fx2 = function(x) ((exp(1)^x)-(pi*x))

biseccion = function(a,b,err) {
  # Grafico
  x = seq(a,b,0.1)
  plot(x,Fx(x),type="l",col="blue")
  abline(h=0,v=0,col="red")
  
  inf = a
  sup = b
  aux = 0
  aux2 = 0
  it = 0
  result = Fx2(b)
  
  while(err < abs(result)){
    it = it + 1
    
    if((Fx2(inf)*Fx2(sup))<0){
      aux = (sup+inf)/2
      aux2 = Fx2(aux)
      
      if(abs(aux2) < err){
        break
      }else{
        if((Fx2(inf)*aux2)>0){
          inf =  aux
        }else{
          sup = aux
        }
      }
      
    }else{
      cat("Intervalo no valido\n")
      break
    }
  }
  cat("Iteraciones =",it,"Resultado = ",aux,"\n")
}

biseccion(0,1,10e-8)
biseccion(1,2,10e-8)

