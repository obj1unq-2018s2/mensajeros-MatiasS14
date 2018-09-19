object puenteDeBrooklyn {
	method dejarPasar(mensajero) {
		return mensajero.pesoTotal() < 1000 //1000 kg (1 tonelada)		
	}
}

object laMatrix{
	method dejarPasar(mensajero){
		return mensajero.puedeLlamar()
	}
}
