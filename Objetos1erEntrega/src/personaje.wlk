import hechizos.*
import artefactosDeLucha.*
import refuerzosArmadura.*
import fuerzaOscura.*
import feriaDeHechiceria.*

class Personaje{
	
	var property hechizoPreferido = null
	var artefactosDeLucha = []
	var valorBaseDeLucha = 1
	var property nivelBaseHechiceria = 3
	var property monedasDeOro = 100
	
	//punto 1	
	
	method nivelDeHechiceria(){
		return (self.nivelBaseHechiceria() * (self.poderHechizoPreferido() * hechizoPreferido.multiplicador())) + fuerzaOscura.valorFuerzaOscura()
	}

	method poderHechizoPreferido(){
		return hechizoPreferido.aportar()
	}
	method esPoderoso(){
		return hechizoPreferido.esPoderoso()
	}
	method valorBaseDeLucha(nuevoValor){
		valorBaseDeLucha = nuevoValor
		
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
		
	method sacarEspejo(){
		return artefactosDeLucha.filter({ artefacto => artefacto.itemTipo() != "Espejo"})
	}	
		
	method objetoMasPoderoso(){
		return (self.sacarEspejo()).max{unArtefacto => unArtefacto.aportar()}
	}
	
	//punto 4
	
	method cumplirObjetivo(){
		monedasDeOro += 10
	
	}
	
	method comprarArtefacto(artefacto){
	if (self.monedasDeOro() >= artefacto.precioDeLista()){
		self.agregarArtefacto(artefacto)
		monedasDeOro -= artefacto.precioDeLista()
		}else{
			self.error("No alcansan las monedas de oro para comprar este artefacto")
			 }
	}
	method comprarHechiso(nuevoHechiso){
		if (self.canjear(nuevoHechiso)){
		
		}else{
			if(self.comprarConMonedas(nuevoHechiso)){
		
		}
	
	}
}
	method canjear(nuevoHechiso){
		return (self.hechizoPreferido()).precioDeLista() / 2 >= nuevoHechiso.precioDeLista()
	
	}


	method comprarConMonedas(nuevoHechiso){
		return self.monedasDeOro() >= nuevoHechiso.precioDeLista()
	}
}  
	
/*
*/