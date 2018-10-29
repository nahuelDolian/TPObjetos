import personaje.*
import artefactosDeLucha.*

class Hechizo {
	var property nombre
	var property multiplicador
	
	constructor(elegirNombre, tipoDeHechizo){
		multiplicador = 1
		nombre = elegirNombre
	}	
	
	method aportar(){
		return nombre.length() * multiplicador
	}
	method esPoderoso(){
		return self.aportar() > 15
	}
	method precioDeLista(){
		return self.aportar()
	}
}

object HechizoBasico {
	var property multiplicador
	var property itemTipo
	
	constructor(){
		multiplicador = 1
		itemTipo = "HechizoBasico"
	}
	
	method aportar(){
		return 10
	}
	method esPoderoso(){
		return false
	}
	method precioDeLista(){
		return self.aportar()
	}
}