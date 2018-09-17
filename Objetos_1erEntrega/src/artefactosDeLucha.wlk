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
	

	method damePoder() {
		return self.aportar()
	}
}

object collarDivino{
	var perlas = 0
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

	method damePoder() {
		return self.aportar()
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
	

	method damePoder() {
		return self.aportar()
	}

}

object armadura{
	var dueno
	var refuerzoArmadura
	
	method dueno(unDueno){
		dueno = unDueno
	}
	
	method aportar(){
		return 2 + self.refuerzoArmadura()
	}
		
	method refuerzoArmadura(){
		return refuerzoArmadura.aportar()
	}
	
	method refuerzoArmadura(unRefuerzo){
		refuerzoArmadura=unRefuerzo	
    }
    

	method damePoder() {
		return self.aportar()
	}
}

object espejo{
	var dueno
	
		method dueno(unDueno){
		dueno = unDueno
	}
	
	method retornarMasPoderoso(unArtefacto){
	   return unArtefacto.aportar()
	
	}

	method damePoder() {
		return 0
	}
	
  method aportar(){
  	return dueno.objetoMasPoderoso().damePoder()
  }  
}

object libroDeHechizos{
 var listaDeHechizos = []

   method listaDeHechizos(unaListaDeHechizos){
      listaDeHechizos = unaListaDeHechizos
    }
    
    method aportar(){
   return listaDeHechizos.sum(hechizo -> hechizo.aportar())
}
	method damePoder() {
		return self.aportar()
	}
	
	method poder() {
		return self.aportar()
	}
	
}