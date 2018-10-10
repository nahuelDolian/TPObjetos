import rolando.*
import artefactosDeLucha.*

object espectroMalefico {
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

object hechizoBasico {
	method aportar(){
		return 10
	}
	method esPoderoso(){
		return false
	}
}
