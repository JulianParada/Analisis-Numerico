#include <iostream>
#include <cmath>

const double e = std::exp(1.0);
const double pi = M_PI;

double funcion(double x);
double biseccion(double a, double b, double err, double &it);

int main(){
	
	double result = 0;
	double aa ;
	result = biseccion(0,2,10e-8,aa);
	
    std::cout<<"Raiz: "<<result<<std::endl;
    std::cout<<"# Iteraciones: "<<aa<<std::endl;
    
    return 0;
}


double funcion(double x)
{
    return (((x)*(pow(e,x)))-pi);
}

double biseccion(double a,double b,double err, double &it){ 
	
	double inf = a;
	double sup = b;
	double aux = 0;
	double aux2 = 0;
	double ite = 0;
	double result = funcion(b);
	
	while (err < fabs(result))
	{
		ite++;
		if((funcion(inf)*funcion(sup))<0){
			aux = (sup+inf)/2;
			aux2 = funcion(aux);
			
			if(fabs(aux2) < err){
				//aux = aux2;
				break;
			}else{
				if((funcion(inf)*aux2)>0){
					inf =  aux;
				}else{
					sup = aux;
				}
			}
			
		}else{
			std::cout<<"Intervalo no valido"<<std::endl;
			return 0;
		}
	}
	it = ite;
	return aux;
}
