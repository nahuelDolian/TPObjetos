import hechizos.*
import artefactosDeLucha.*
import refuerzosArmadura.*
import fuerzaOscura.*

class Personaje{
	
	var property hechizoPreferido = hechizoBasico
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
		return artefactosDeLucha.filter({ artefacto => artefacto == espejo })
	}	
		
	method objetoMasPoderoso(){
		return (self.sacarEspejo()).max{unArtefacto => unArtefacto.aportar()}
	}
	
	//punto 4
	
	method cumplirObjetivo(){
		monedasDeOro += 10
	
	}
	
	method comprarArtefacto(artefacto){
	if (self.monedasSuficientesParaComprar(artefacto)){
			self.agregarArtefacto(artefacto)
			monedasDeOro -= artefacto.precioDeLista()
				}else{
				self.error("No tienes monedas de oro suficientes para comprar este artefacto")
				}
	}
	
	method monedasSuficientesParaComprar(artefacto){
		return self.monedasDeOro() >= artefacto.precioDeLista()
	}
	
	/*method comprarHechizo(nuevoHechizo){
		if ( self.hechizoPreferido() != null && self.canjear(nuevoHechizo)){
		self.hechizoPreferido(nuevoHechizo)
				
		}else{
			if(self.comprarConMonedas(nuevoHechizo)){
				 self.hechizoPreferido(nuevoHechizo)
				 monedasDeOro += ((self.hechizoPreferido()).precioDeLista() / 2) - (nuevoHechizo.precioDeLista())
					}else{
						self.error("No te alcansan las monedas para comprar el Hechizo")
					}
	
	}
}
* 
*/
	
method comprarConMonedas(nuevoHechizo){
		return self.monedasDeOro() >= nuevoHechizo.precioDeLista()
	} 

method pagarHechizo(){
	monedasDeOro -= nuevoHechizo.precioDeLista() - (self.hechizoPreferido().precioDeLista() / 2)
}

method comprarHechizo(nuevoHechizo){
		if (puedeComprar()){
			self.pagarHechizo()
			self.hechizoPreferido(nuevoHechizo)
			} else{
			  self.error("No puedes comprar este hechizo")
  			}
  			
			
method puedeComprar(){
	self.monedasDeOro() > (nuevoHechizo.precioDeLista() - (self.hechizoPreferido().precioDeLista() / 2))
	}
}