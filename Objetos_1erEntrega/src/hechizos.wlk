import rolando.*
import artefactosDeLucha.*

object espectroMalefico {
	var nombre = "espectro malefico"
	
	method nombre(unNombre){
		nombre=unNombre
	}
	method damePoder(){
		return nombre.length()
	}
	method esPoderoso(){
		return self.damePoder() > 15
	}
}

object hechizoBasico {
	method damePoder(){
		return 10
	}
	method esPoderoso(){
		return false
	}
}
