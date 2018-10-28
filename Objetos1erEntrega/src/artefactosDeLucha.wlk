import personaje.*
import hechizos.*
import refuerzosArmadura.*
import fuerzaOscura.*

class ArmaBlanca {
	var dueno
	var precioEnMonedas
	var property itemTipo
	
	constructor(nuevoTipoArtefacto){
		itemTipo = nuevoTipoArtefacto
		dueno = null
		precioEnMonedas = 15
	}
	
	method dueno(unDueno){
		dueno = unDueno
	}
	
	method aportar(){
		return 3
	}
}

object collarDivino{
	var perlas = 5
	var dueno
	var property itemTipo = "CollarDivino"
	
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

class Mascara {
	var indiceDeOscuridad
	var dueno
	var minimoDePoder = 4
	var property itemTipo = "Mascara"
		
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
		return self.calcularSuAporte().max(minimoDePoder) 	
	}
	
	method calcularSuAporte(){
		return (fuerzaOscura.valorFuerzaOscura()/2)*indiceDeOscuridad
	}
}


class Armadura{
	var dueno
	var refuerzoArmadura
	var valorBase
	var property itemTipo
	
	constructor(nuevoDueno, nuevoValorBase, nuevoRefuerzoArmadura){
		dueno = null
		valorBase = nuevoValorBase
		refuerzoArmadura = nuevoRefuerzoArmadura
		itemTipo = "Armadura"
	}
		
	method aportar(){
		return valorBase + self.refuerzoArmadura()
	}
		
	method refuerzoArmadura(){
		return refuerzoArmadura.aportar()
	}
	
	method refuerzoArmadura(unRefuerzo){
		refuerzoArmadura=unRefuerzo
		refuerzoArmadura.dueno(dueno)	
    }
	method dueno(unDueno){
		dueno = unDueno
	}
	method cambiarRefuerzo(valor){
		refuerzoArmadura.refuerzo(valor)
	}
}

class Espejo{
	var dueno
	var property itemTipo = "Espejo"
	
	method dueno(unDueno){
		dueno = unDueno
	}	
	method aportar(){
		if((dueno.sacarEspejo()).isEmpty()){
			return 0
		}else{
			return dueno.objetoMasPoderoso().aportar()
		}
	}
}

class LibroDeHechizo{
	var property listaDeHechizos = []
	var property multiplicador = 1
	var property itemTipo = "LibroDeHechizos"
	
	method agregarHechizo(nuevoHechizo){
		if(nuevoHechizo.itemTipo() == "LibroDeHechizos"){
			self.error("No se puede tener un libro dentro de otro libro")
		}else{
			listaDeHechizos.add(nuevoHechizo)
		}
	}
    
    method aportar(){
   		return self.listaHechizosPoderosos().sum{unHechizo => unHechizo.aportar()}
   		
	}
	method listaHechizosPoderosos(){
		return listaDeHechizos.filter{unHechizo => unHechizo.esPoderoso()}
	}
}

	