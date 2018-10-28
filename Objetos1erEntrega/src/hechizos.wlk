import personaje.*
import artefactosDeLucha.*

class Hechizo {
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
}

class EspectroMalefico inherits Hechizo {
	}
	
class Logo inherits Hechizo{
	}

class HechizoBasico {
	var property multiplicador
	var property itemTipo
	
	constructor(elegirMultiplicador){
		multiplicador = elegirMultiplicador
		itemTipo = "HechizoBasico"
	}
	
	method aportar(){
		return 10
	}
	method esPoderoso(){
		return false
	}
}