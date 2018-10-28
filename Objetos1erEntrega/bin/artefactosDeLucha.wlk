import personaje.*
import hechizos.*
import refuerzosArmadura.*
import fuerzaOscura.*

class ArmaBlanca {
	var dueno
	var precioEnMonedas
	var property tipoArtefacto
	
	constructor(nuevoTipoArtefacto){
		tipoArtefacto = nuevoTipoArtefacto
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
	var property tipoArtefacto = "CollarDivino"
	
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
	var property tipoArtefacto = "Mascara"
		
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
	var property tipoArtefacto
	
	constructor(nuevoDueno, nuevoValorBase, nuevoRefuerzoArmadura){
		dueno = nuevoDueno
		valorBase = nuevoValorBase
		refuerzoArmadura = nuevoRefuerzoArmadura
		tipoArtefacto = "Armadura"
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
	var property tipoArtefacto = "Espejo"
	
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

object libroDeHechizos{
	var listaDeHechizos = []
	var multiplicador = 1
	var property tipoArtefacto = "LibroDeHechizos"
	
	
	method multiplicado(nuevoMultiplicador){
		multiplicador = nuevoMultiplicador
	}
	method multiplicador(){
		return multiplicador
	}
	

    method listaDeHechizos(unaListaDeHechizos){
      listaDeHechizos = unaListaDeHechizos
    }
    
    method aportar(){
   		return self.listaHechizosPoderosos().sum{unHechizo => unHechizo.aportar()}
   		
	}
	method listaHechizosPoderosos(){
		return listaDeHechizos.filter{unHechizo => unHechizo.esPoderoso()}
	}
}

	