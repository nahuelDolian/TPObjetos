import personaje.*
import artefactosDeLucha.*

class Hechizo {
	var nombre = "espectro malefico"
	
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
	method aportar(){
		return 10
	}
	method esPoderoso(){
		return false
	}
}
