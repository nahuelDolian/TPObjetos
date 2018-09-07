import rolando.*
import hechizos.*

object espadaDelDestino {
	
	method aportar(){
		return 3
	}
}
object collarDivino{
	var perlas
	
	method cantidadPerlas(unasPerlas){
		perlas=unasPerlas
	}
	method aportar(){
		return perlas
	}
}
object mascaraOscura{
	var dueno
	
	method dueno(unDueno){
		dueno = unDueno
	}
	method aportar(){
		return self.calcularSuAporte() 	
	}
	method calcularSuAporte(){
		return (dueno.valorFuerzaOscura()/2).max(4)
	}

}