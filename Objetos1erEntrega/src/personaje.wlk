import hechizos.*
import artefactosDeLucha.*
import refuerzosArmadura.*
import fuerzaOscura.*
import tienda.*

class Personaje{
	
	var property hechizoPreferido = hechizoBasico
	var artefactosDeLucha = []
	var valorBaseDeLucha = 1
	var property nivelBaseHechiceria = 3
	var property monedasDeOro = 100
	
	//punto 1	
	
	method nivelDeHechiceria(){
		return (self.nivelBaseHechiceria() * (self.poderHechizoPreferido())) + fuerzaOscura.valorFuerzaOscura()
	}

	method poderHechizoPreferido(){
		return hechizoPreferido.aportar(self)
	}
	method esPoderoso(){
		return hechizoPreferido.esPoderoso(self)
	}
	method valorBaseDeLucha(nuevoValor){
		valorBaseDeLucha = nuevoValor
		
	}
      	//  punto 2 //
	
	
	method damePoderLucha(){
		return valorBaseDeLucha + artefactosDeLucha.sum{artefacto => artefacto.aportar(self)}
	}
	
	method agregarArtefacto(unArtefacto){
		artefactosDeLucha.add(unArtefacto)
	
	}
	
	method quitarArtefacto(unArtefacto){
		artefactosDeLucha.remove(unArtefacto)
	}
	
    method artefactosDeLucha(){
	    return artefactosDeLucha
    }   
    
    method estaCargado(){
	return self.artefactosDeLucha().size() >= 5
	
	}
		
	method sacarEspejo(){
		return artefactosDeLucha.filter({ artefacto => artefacto != espejo})
	}	
		
	method objetoMasPoderoso(){
		return (self.sacarEspejo()).max{unArtefacto => unArtefacto.aportar(self)}
	}
	
	//punto 4
	
	method cumplirObjetivo(){
		monedasDeOro += 10
	}
	
	
	method intentoDeCompra(unArtefacto){
		tienda.comprarArtefacto(unArtefacto, self)
	}
	method cantidadSuficienteParaArtefacto(unArtefacto){
		return self.monedasDeOro() >= unArtefacto.precioDeLista(self)
	}
	method descontarCantidad(cantidad){
		monedasDeOro -= cantidad
	}
	method pasarPropiedadDe(unArtefacto){
		self.agregarArtefacto(unArtefacto)
	}
	
	method intentoDeCompraHechizo(unHechizo){
		tienda.comprarHechizo(unHechizo, self)
	}
	
	method hechizoPreferidoEsMasCaro(unHechizo){
		return self.hechizoPreferido().precioDeLista(self) / 2 >= unHechizo.precioDeLista(self)
	}
	
	
	}