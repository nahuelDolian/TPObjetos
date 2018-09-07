import rolando.*

object  cotaDeMalla {
	
	
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