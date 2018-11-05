object tienda{
	
	method comprarArtefacto(unArtefacto, dueno){
		if(dueno.cantidadSuficienteParaArtefacto(unArtefacto)){
			dueno.pasarPropiedadDe(unArtefacto)
			dueno.descontarCantidad(unArtefacto.precioDeLista(dueno))
		}else{
			self.error("no puede comprar el artefacto")
		}
	}
	
	method comprarHechizo(unHechizo, dueno){
		if(dueno.hechizoPreferidoEsMasCaro(unHechizo)){
			dueno.hechizoPreferido(unHechizo)
		}else{
			if(dueno.monedasDeOro() >= unHechizo.precioDeLista(dueno)){
				dueno.hechizoPreferido(unHechizo)
				dueno.descontarCantidad(unHechizo.precioDeLista(dueno) - (dueno.hechizoPreferido().precioDeLista(dueno)/ 2))
			}else{
				self.error("No puede comprar este hechizo")
			}
		}
		
	}
}
