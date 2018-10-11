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
---------------------------------------------------------------------
import Personaje.*
import hechizos.*
import refuerzosArmadura.*

class ArmasBlancas {
	var dueno
	
	method dueno(unDueno){
		dueno = unDueno
		}
	
	method aportar(){
		return 3
		}
}

class Espadas inherits ArmasBlancas{
		}
	
class Hachas inherits ArmasBlancas{
	}
	
class Lanzas inherits ArmasBlancas{
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

class Mascara {
	var indiceDeOscuridad
	var dueno
	var minimoDepoder = 4
		
	method dueno(unDueno){
		dueno = unDueno
	}
	
	method minimoDePoder(valorPoder){
		minimoDePoder = valorPoder
	}
	
	method indiceDeOscuridad(indice){
		indiceDeOscuridad = indice
	}
	
	method aportar(){
		return self.calcularSuAporte().max(4) 	
	}
	
	method calcularSuAporte(){
		return (dueno.valorFuerzaOscura()/2)*indiceDeOscuridad()
	}
}


class armadura{
	var dueno
	var refuerzoArmadura
	var valorBase
	
	constructor(dueno, valorBase){
		dueno = dueno
		valorBase = valorBase
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
   		return self.listaHechizosPoderosos().sum{unHechizo => unHechizo.damePoder()}
   		
}
	method listaHechizosPoderosos(){
		return listaDeHechizos.filter{unHechizo => unHechizo.esPoderoso()}
	}
	
	
	method damePoder() {
		return self.aportar()
	}
	
}
