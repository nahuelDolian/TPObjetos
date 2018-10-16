import hechizos.*
import artefactosDeLucha.*
import refuerzosArmadura.*
import fuerzaOscura.*

class Personaje{
	
	var hechizoPreferido
	var valorFuerzaOscura = fuerzaOscura.valor()
	var artefactosDeLucha = []
	var valorBaseDeLucha = 1
	var property nivelBaseHechiceria = 3
	var monedasDeOro = 100
	
	//punto 1	
	method valorFuerzaOscura(){
		return valorFuerzaOscura  
	}
	method hechizoPreferido(unHechizo){
		hechizoPreferido=unHechizo
	} 
	method nivelDeHechiceria(){
		return ((self.nivelBaseHechiceria() * (self.poderHechizoPreferido() * hechizoPreferido.multiplicador())) +  self.valorFuerzaOscura())
	}

	method poderHechizoPreferido(){
		return hechizoPreferido.aportar()
	}
	method eclipse(){
		valorFuerzaOscura = (self.valorFuerzaOscura()) * 2
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
	
	//punto 4
	
	
method comprarArtefacto(artefacto){
	if (self.monedasDeOro() >= artefacto.precioEnMonedas()){
		
	}else{
	
	}
	}
method comprarHechiso(hechiso){
	if (self.canjear()){
		
	}else{
		if(self.comprarConMonedas()){
		
	}
	
}
}
method canjear(){
	return self.hechizoFavorito.precioEnMonedas() / 2 >= hechisoAComprar.precioEnMonedas()
	
}


method comprarConMonedas(){
	return self.monedasDeOro() >= hechisoAComprar.precioEnMonedas()
}


}  