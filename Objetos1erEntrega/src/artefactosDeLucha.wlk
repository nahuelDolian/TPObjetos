import personaje.*
import hechizos.*
import refuerzosArmadura.*

class ArmaBlanca {
	var dueno
	method precio(){
		return 5* self.aportar()
	}
	
	method dueno(unDueno){
		dueno = unDueno
	}
	
	method aportar(){
		return 3
	}
	method damePoder(){
		return self.aportar()
	}
}

class Espada inherits ArmaBlanca{
	}
	
class Hacha inherits ArmaBlanca{
	}
	
class Lanza inherits ArmaBlanca{
	}	 


object collarDivino{
	var perlas = 5
	var dueno
	method precio(){
		return 2 * perlas
	}
	
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
	var minimoDePoder = 4
	var precioEnMonedas = 0 // no dice nada
		
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
		return (dueno.valorFuerzaOscura()/2)*indiceDeOscuridad
	}	
	method damePoder(){
		return self.aportar()
	}
}


class Armadura{
	var dueno
	var refuerzoArmadura
	var valorBase
	
	constructor(nuevoDueno, nuevoValorBase, nuevoRefuerzoArmadura){
		dueno = nuevoDueno
		valorBase = nuevoValorBase
		refuerzoArmadura = nuevoRefuerzoArmadura
	}
	method precio(){
		return 2}
		
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
    
	method damePoder() {
		return self.aportar()
	}
	method dueno(unDueno){
		dueno = unDueno
	}
	method cambiarRefuerzo(valor){
		refuerzoArmadura.refuerzo(valor)
	}
}

object espejo{
	var dueno
	method precio(){
		return 90
	}
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
	var multiplicador = 1
	
	method precio(){
		return listaDeHechizos.lenght() + listaDeHechizos.sum({hechizo => hechizo.aportaSiSosPoderoso()})
	}
	
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
	
	
	method damePoder() {
		return self.aportar()
	}
	
}

	
