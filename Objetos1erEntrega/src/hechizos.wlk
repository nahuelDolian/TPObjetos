import personaje.*
import artefactosDeLucha.*

class Hechizo {
	var property nombre
	var property multiplicador
	var property itemTipo
	
	constructor(elegirNombre){
		multiplicador = 1
		nombre = elegirNombre
		itemTipo = "Hechizo"
	}	
	method aportar(){
		return nombre.length()
	}
	method esPoderoso(){
		return self.aportar() > 15
	}
	method precioDeLista(){
		return self.aportar()
	}
}

class EspectroMalefico inherits Hechizo {
	}
	
class Logo {
	var property nombre
	var property multiplicador
	var property itemTipo
	
	
	constructor(elegirMultiplicador, elegirNombre){
		multiplicador = elegirMultiplicador
		nombre = elegirNombre
		itemTipo = "Hechizo"
	}
		method aportar(){
		return nombre.length()
	}
	method esPoderoso(){
		return self.aportar() > 15
	}
	method precioDeLista(){
		return self.aportar()
	}
}

class HechizoBasico {
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