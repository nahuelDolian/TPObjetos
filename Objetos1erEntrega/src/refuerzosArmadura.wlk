import personaje.*

object cotaDeMalla{
	var dueno
	var refuerzo = 1
	
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
		return dueno.poderDeHechiceria()
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
	 
}
object ninguno{
	var dueno
	
	method aportar(){
	   return 0
	}
	method dueno(unDueno){
		dueno=unDueno
	}
}
