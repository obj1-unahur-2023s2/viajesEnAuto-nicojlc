import remiseras.*
import clientes.*

object oficina {
	var primerRemiseras
	var segundaRemiseras
	
	method primeraRemiseras() = primerRemiseras
	method segundaRemiseras() = segundaRemiseras
	
	method asignarRemiseras(remisera1, remisera2){
		primerRemiseras = remisera1
		segundaRemiseras  = remisera2
	}
	
	method cambiarPrimerRemiseraPor(remisera){
		primerRemiseras = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera){
		segundaRemiseras = remisera
	}
	method intercambiarREmiseras(){
		self.asignarRemiseras(segundaRemiseras, primerRemiseras)
	}
	method remiseraElegidaParaViaje(cliente, km) {
		if (primerRemiseras.precioViaje(cliente, km) > 30 + segundaRemiseras.precioViaje(cliente, km)){return segundaRemiseras} else {return primerRemiseras}
	}
}
