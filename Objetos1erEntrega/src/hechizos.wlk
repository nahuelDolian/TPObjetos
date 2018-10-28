import personaje.*
import artefactosDeLucha.*

class Hechizo {
	var property nombre
	var property multiplicador
	
	constructor(elegirMultiplicador, elegirNombre){
		multiplicador = elegirMultiplicador
		nombre = elegirNombre
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
	
	constructor(elegirMultiplicador){
		multiplicador = elegirMultiplicador
	}
	
	method aportar(){
		return 10
	}
	method esPoderoso(){
		return false
	}
}