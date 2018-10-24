import personaje.*
import artefactosDeLucha.*

class Hechizo {
	var nombre 
	var multiplicador = 1
	method precio(){
		return 10
	}	
	
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
	method aportaSiSosPoderoso(){
		return if(self.esPoderoso()){
			return self.aportar()
		}else{
			return 0
		}
	}
}

class EspectroMalefico inherits Hechizo {
	}
	
class Logo inherits Hechizo{
	override method precio(){
		return self.aportar()
	}
	}

class HechizoBasico {
	var multiplicador = 1
	
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
