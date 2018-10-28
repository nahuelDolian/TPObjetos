import personaje.*

class CotaDeMalla{
	var property dueno
	var property refuerzo
	
	constructor(elegirValorRefuerzo){
		refuerzo = elegirValorRefuerzo
		dueno = null
	}
	method aportar(){
		return refuerzo
	}
	method precioDeLista(){
		return (refuerzo / 2)
	}
}
object bendicion{
	var dueno
	
	method aportar(){
		return dueno.nivelDeHechiceria()
	}
	method dueno(unDueno){
		dueno=unDueno
	}
}
object hechizo{
	var dueno
	
	method aportar(){
		return dueno.poderHechizoPreferido()
	}
	
	method dueno(unDueno){
		dueno=unDueno
	   }
	method precioDeLista(){
		return (2 + (dueno.hechizoPreferido()).precioDeLista())
	}
	 
}
object ninguno{
	var dueno
	
	method aportar(){
	   return 0
	}
	method dueno(unDueno){
		dueno=unDueno
	}
	method precioDeLista(){
		return 2
	}
}