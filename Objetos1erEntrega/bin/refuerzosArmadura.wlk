import personaje.*

object cotaDeMalla{
	var dueno
	var refuerzo = 1
	var precioEnMonedas 
	
	method refuerzo(nuevoValor){
		refuerzo = nuevoValor
	}
	method aportar(){
		return refuerzo
	}
	method dueno(unDueno){
		dueno=unDueno
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
	var precioEnMonedas = 2 
	
	method aportar(){
		return dueno.poderHechizoPreferido()
	}
	
	method dueno(unDueno){
		dueno=unDueno
	   }
	 
}
object ninguno{
	var dueno
	var precioEnMonedas = 0
	
	method aportar(){
	   return 0
	}
	method dueno(unDueno){
		dueno=unDueno
	}
}