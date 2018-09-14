import rolando.*
import hechizos.*
import refuerzosArmadura.*


object espadaDelDestino {
	var dueno
	
	method dueno(unDueno){
		dueno = unDueno
		}
	
	method aportar(){
		return 3
	}
}

object collarDivino{
	var perlas
	var dueno
	
	method cantidadPerlas(unasPerlas){
		perlas=unasPerlas
	}
	
	method aportar(){
		return  perlas
	}
	
	method dueno(unDueno){
		dueno = unDueno
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

object armadura{
	var dueno
	var refuerzoArmadura
	
	method dueno(unDueno){
		dueno = unDueno
	}
	
	method aportar(){
		return 2 + refuerzoArmadura.aportar()
	}
		
	method refuerzoArmadura(){
		return refuerzoArmadura.aportar()
	}
	
	method refuerzoArmadura(unRefuerzo){
		refuerzoArmadura=unRefuerzo	
    }

}

//object espejo{
//	var dueno
	
//	method dueno(unDueno){
//		dueno = unDueno
//	}
	
//	method retornarMasPoderoso(unArtefacto){
//	return unArtefacto.aportar()
	
//	}
	
//    method aportar(){
//	return self.retornarMasPoderoso(dueno.objetoMasPoderoso())
//	}
