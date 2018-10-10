import hechizos.*
import artefactosDeLucha.*
import refuerzosArmadura.*
import fuerzaOscura.*

class Personaje{
	
	var hechizoPreferido
	var fuerzaOscura=fuerzaOscura.valor()
	var artefactosDeLucha = []
	var valorBaseDeLucha = 1
	var property nivelBaseHechiceria=3
	//punto 1	
	method valorFuerzaOscura(){
		return fuerzaOscura  
	}
	method hechizoPreferido(unHechizo){
		hechizoPreferido=unHechizo
	} 
	method nivelDeHechiceria(){
		return ( (self.nivelBaseHechiceria() * self.poderHechizoPreferido()) +  self.valorFuerzaOscura())
	}
	method poderHechizoPreferido(){
		return hechizoPreferido.damePoder()
	}
	method eclipse(){
		self.valorFuerzaOscura(valorFuerzaOscura * 2)
	}
	method esPoderoso(){
		return hechizoPreferido.esPoderoso()
	}

     	//  punto 2 //
	
	
	method damePoderLucha(){
		return valorBaseDeLucha + artefactosDeLucha.sum{artefacto => artefacto.aportar()}
	}
	
	method agregarArtefacto(unArtefacto){
		artefactosDeLucha.add(unArtefacto)
		unArtefacto.dueno(self)
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
		
	method objetoMasPoderoso(){
		return artefactosDeLucha.max{unArtefacto => unArtefacto.damePoder()}
	}
	
	method valorBaseDeLucha(unValor){
	 	valorBaseDeLucha = unValor
	}
}  
 
 
