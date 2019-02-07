#include <iostream>
#include <cmath>

const double e = std::exp(1.0);
const double pi = M_PI;

double fx(double x);
double fxi(double x);
double funcion(double x);
double puntoFijo(double a, double b, double x0, double err, double &it);

int main(){
		
    //std::cout<<fx(0)<<std::endl;
    //std::cout<<funcion(0)<<std::endl;
	
	double i = 1;
	double s = 2; 
	
	if((fx(i)>i) || (fx(s)<s)){
		std::cout<<"El intervalo no es valido. "<<std::endl;
	}else
	{
		double x0 = (i+s)/2;
		double it = 0;
		double res = puntoFijo(i,s,x0,10e-8,it);
		
		std::cout<<"Resultado: "<<res<<" en: "<<it<<" iteraciones"<<std::endl;	
	}
    
    return 0;
}


double fx(double x)
{
    return ((pow(e,x))/pi);
}

double fxi(double x){
	return log(x*pi);
}

double funcion(double x){
	return ((pow(e,x))-pi*x);
}

double puntoFijo(double a, double b, double x0, double err, double &it){
	double inf = a;
	double sup = b;
	double ite = 0;
	double xIni = x0;
	double fxIni = fx(xIni);
	bool check = false;

	while(fabs(xIni-fxIni)>err){
		ite++;
		if(xIni < inf){
			check = true;
		}
		if(!check){
			xIni = fxIni;
			fxIni = fx(xIni);
		}else{
			fxIni = xIni;
			xIni = fxi(fxIni);
		}
	}
	it = ite;
	return xIni;
}
