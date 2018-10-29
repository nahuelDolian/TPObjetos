import personaje.*
import hechizos.*
import refuerzosArmadura.*
import fuerzaOscura.*

class ArmaBlanca {
	var property itemTipo
	
	constructor(nuevoTipoArtefacto){
		itemTipo = nuevoTipoArtefacto
	}
	
	method aportar(dueno){
		return 3
	}
	
	method precioDeLista(){
		return self.aportar() * 5
	}
}

object collarDivino{
	var perlas = 5
	var property itemTipo = "CollarDivino"
	
	method cantidadPerlas(unasPerlas){
		perlas=unasPerlas
	}
	
	method aportar(dueno){
		return  perlas
	}
	
	method precioDeLista(){
		return perlas * 2
	}	
}

class Mascara {
	var indiceDeOscuridad
	var minimoDePoder = 4
	var property itemTipo = "Mascara"
		
	constructor (valorPoder, indiceOscuro){
		minimoDePoder = valorPoder
		indiceDeOscuridad = indiceOscuro
	}
	
	method aportar(dueno){
		return self.calcularSuAporte().max(minimoDePoder) 	
	}
	
	method calcularSuAporte(){
		return (fuerzaOscura.valorFuerzaOscura()/2)*indiceDeOscuridad
	}
	method precioDeLista(){
		return self.aportar()
	}
}


class Armadura{
	var refuerzoArmadura
	var valorBase
	var property itemTipo
	
	constructor(nuevoDueno, nuevoValorBase, nuevoRefuerzoArmadura){
		valorBase = nuevoValorBase
		refuerzoArmadura = nuevoRefuerzoArmadura
		itemTipo = "Armadura"
	}
	method valorBase(){
		return valorBase
	}
		
	method aportar(dueno){
		return valorBase + refuerzoArmadura.aportar()
	}
	 
	method cambiarRefuerzo(valor){
		refuerzoArmadura.refuerzo(valor)
	}
	method precioDeLista(){
		return refuerzoArmadura.precioDeLista()
	}
}

object Espejo{
	
	method aportar(dueno){
		if((dueno.sacarEspejo()).isEmpty()){
			return 0
		}else{
			return dueno.objetoMasPoderoso().aportar()
		}
	}
	method precioDeLista(){
		return 90
	}
}

class LibroDeHechizo{
	var property listaDeHechizos = []
	var property multiplicador = 1
	
	method agregarHechizo(nuevoHechizo){
		if(nuevoHechizo.itemTipo() == "LibroDeHechizos"){
			self.error("No se puede tener un libro dentro de otro libro")
		}else{
			listaDeHechizos.add(nuevoHechizo)
		}
	}
    
    method aportar(dueno){
   		return self.listaHechizosPoderosos().sum{unHechizo => unHechizo.aportar()}
   		
	}
	method listaHechizosPoderosos(){
		return listaDeHechizos.filter{unHechizo => unHechizo.esPoderoso()}
	}
	method precioDeLista(){
		return (listaDeHechizos.size()*10) + 1 * (self.listaHechizosPoderosos()).sum({hechizo => hechizo.aportar()})
	}
}

	