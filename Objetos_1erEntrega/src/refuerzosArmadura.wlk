import rolando.*

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
		return dueno.hechizoPreferido()
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
	   
