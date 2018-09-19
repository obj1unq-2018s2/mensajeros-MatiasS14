import destinos.*
import transportes.*

object mensajeria {
	var property mensajeros = []
	
	method contratar(alguien) { mensajeros+= [alguien]	}
	
	method despedir(alguien){ mensajeros.remove(alguien)}
	
	method despedirATodos(){ mensajeros.removeAll(mensajeros)}
	
	method esGrande(){return mensajeros.size() > 2 }
	
	method paquetePuedeSerEnviadoPorElPrimero(paquete){
	  return paquete.puedeSerEnviadoPor(mensajeros.first())
	}
	
	method pesoUltimoMensajero(){
		return mensajeros.last().peso()
	}
	
	method paquetePuedeSerEnviadoPorAlguien(paquete){
		return mensajeros.any{mensajero => paquete.puedeSerEnviadoPor(mensajero)}
	}
}

object roberto{
	var property transporte
	
	var property peso
	
	method pesoTotal(){return transporte.peso()+ self.peso()}
	
	method puedeLlamar(){return false}
	
}

object chuckNorris{
	
	method peso(){return 900}
	
	method puedeLlamar(){return true}
}

object neo{
	var property credito = 0
	
	method peso(){return 0}
	
	method puedeLlamar(){return self.credito() > 0 }
}

object paquete{
	var property estaPago= false
	
	var property destino
	
	method pagar(){estaPago=true}
	
	method puedeSerEnviadoPor(alguien){
		
		return self.estaPago() and destino.dejarPasar(alguien)
		
	}
}

