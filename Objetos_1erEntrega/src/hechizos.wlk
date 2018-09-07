import rolando.*
import artefactosDeLucha.*

object espectroMalefico {
	var nombre = "espectro malefico"
	
	method nombre(unNombre){
		nombre=unNombre
	}
	method poder(){
		return nombre.length()
	}
	method esPoderoso(){
		return self.poder() > 15
	}
}

object hechizoBasico {
	method poder (){
		return 10
	}
	method esPoderoso(){
		return false
	}
}
