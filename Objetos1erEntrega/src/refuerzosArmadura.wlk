import personaje.*

object cotaDeMalla {
	
	method aportar(){
		return 1
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
		return dueno.hechizoPreferido().aportar()
	}
	
	method dueno(unDueno){
		dueno=unDueno
	   }
	 
}
object ninguno{
	
	method aportar(){
	   return 0
	}
}
