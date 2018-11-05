import personaje.*
import hechizos.*
import refuerzosArmadura.*
import fuerzaOscura.*

class ArmaBlanca {
	
	constructor(){}
	
	method aportar(dueno){
		return 3
	}
	
	method precioDeLista(dueno){
		return self.aportar(dueno) * 5
	}
}

object collarDivino{
	var perlas = 5
	
	method cantidadPerlas(unasPerlas){
		perlas=unasPerlas
	}
	
	method aportar(dueno){
		return  perlas
	}
	
	method precioDeLista(dueno){
		return perlas * 2
	}	
}

class Mascara {
	var property indiceDeOscuridad
	var property minimoDePoder 
		
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
	method precioDeLista(dueno){
		return self.aportar(dueno)
	}
}


class Armadura{
	var property refuerzoArmadura
	var valorBase

	constructor(nuevoValorBase, nuevoRefuerzoArmadura){
		valorBase = nuevoValorBase
		refuerzoArmadura = nuevoRefuerzoArmadura
	}
	method valorBase(){
		return valorBase
	}
		
	method aportar(dueno){
		return valorBase + refuerzoArmadura.aportar(dueno)
	}
	 
	method cambiarRefuerzo(valor){
		refuerzoArmadura.refuerzo(valor)
	}
	method precioDeLista(dueno){
		return refuerzoArmadura.precioDeLista(dueno)
	}
}

object espejo{
	
	method aportar(dueno){
		if((dueno.sacarEspejo()).isEmpty()){
			return 0
		}else{
			return dueno.objetoMasPoderoso().aportar(dueno)
		}
	}
	method precioDeLista(dueno){
		return 90
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
    
    method aportar(dueno){
   		return self.listaHechizosPoderosos(dueno).sum{unHechizo => unHechizo.aportar(dueno)}
   		
	}
	method listaHechizosPoderosos(dueno){
		return listaDeHechizos.filter{unHechizo => unHechizo.esPoderoso(dueno)}
	}
	method precioDeLista(dueno){
		return (listaDeHechizos.size()*10) + 1 * (self.listaHechizosPoderosos(dueno)).sum({hechizo => hechizo.aportar(dueno)})
	}
}

	