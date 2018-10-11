import Personaje*
import artefactosDeLucha.*

class Hechizo {
	var nombre = "espectro malefico"
	
	method nombre(unNombre){
		nombre=unNombre
	}
	method aportar(){
		return nombre.length()
	}
	method esPoderoso(){
		return self.damePoder() > 15
	}
}

class EspectroMalefico inherits Hechizo {
	}
	
class Logo inherits Hechizo{
	}

class hechizoBasico {
	method aportar(){
		return 10
	}
	method esPoderoso(){
		return false
	}
}
