import personaje.*

class CotaDeMalla{
	var property refuerzo
	
	constructor(elegirValorRefuerzo){
		refuerzo = elegirValorRefuerzo
			}
			
	method aportar(dueno){
		return refuerzo
	}
	method precioDeLista(dueno){
		return (refuerzo / 2)
	}
}

object bendicion{
	
	method aportar(dueno){
		return dueno.nivelDeHechiceria()
	}
	
	method precioDeLista(dueno){
		return dueno.armadura().valorBase()
	}
}


object ninguno{
		
	method aportar(dueno){
	   return 0
	}
	

	method precioDeLista(dueno){
		return 2
	}
}