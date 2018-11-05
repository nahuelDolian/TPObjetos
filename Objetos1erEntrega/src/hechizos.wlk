import personaje.*
import artefactosDeLucha.*

class Hechizo {
	var property nombre
	var property multiplicador
	var property itemTipo
	
	constructor(elegirNombre){
		multiplicador = 1
		nombre = elegirNombre
		itemTipo ="Hechizo"
	}	
	
	method aportar(dueno){
		return nombre.length() * multiplicador
	}
	method esPoderoso(dueno){
		return self.aportar(dueno) > 15
	}
	method precioDeLista(dueno){
		return self.aportar(dueno)
	}
}

object hechizoBasico {
	var property multiplicador = 1
	var property itemTipo = "hechizoBasico"
	
	
	method aportar(dueno){
		return 10
	}
	method esPoderoso(dueno){
		return false
	}
	method precioDeLista(dueno){
		return self.aportar(dueno)
	}
}