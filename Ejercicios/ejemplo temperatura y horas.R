require(PolynomF)
require(pracma)

hora=c(6,8,10,12,14,16,18,20)
grados=c(7,9,12,18,21,19,15,10)

polyAjuste = poly.calc(hora,grados)
print(polyAjuste)

result = 0
it = 1
i = 6

while (i <= 20){
  result[it] = format(round(polyAjuste(i),0))
  it = it +1
  i = i +1
}

grados2 = c()
it = 1
while(it <= length(result)){
  grados2[it] = strtoi(result[it])
  it = it + 1
}


hora2=c(6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)

error = 0
it2 = 1
while(it <= length(grados)){
  e = grados[it2]-polyAjuste(hora[it2])/grados[it2]
  e
  error[it2] = e
  it2 =it2+1
}

print(error)

plot(hora2,result, pch = 19, cex=1, col= "blue")
par(new=TRUE)
curve(polyAjuste,add=T,lty=3, lwd=2)
par(new=TRUE)
plot(hora,grados, pch = 19, cex=1, col= "red")
