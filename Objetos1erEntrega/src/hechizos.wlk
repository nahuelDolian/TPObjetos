import personaje.*
import artefactosDeLucha.*

class Hechizo {
	var nombre = "espectro malefico"
	var multiplicador = 1
	var precioEnMonedas 
	
	
	method multiplicado(nuevoMultiplicador){
		multiplicador = nuevoMultiplicador
	}
	method multiplicador(){
		return multiplicador
	}
	
	method cambiarNombre(unNombre){
		nombre=unNombre
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
	var multiplicador = 1
	var precioEnMonedas = 10
	
	method multiplicado(nuevoMultiplicador){
		multiplicador = nuevoMultiplicador
	}
	method multiplicador(){
		return multiplicador
	}
	method aportar(){
		return 10
	}
	method esPoderoso(){
		return false
	}
}