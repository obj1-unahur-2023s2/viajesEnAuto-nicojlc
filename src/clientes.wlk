import remiseras.*

object ludmila {
		
	method precioKm(){
		return 18
	}
	
}

object anaMaria{
	
	var esEstable = true
	
	method esEstable() =  esEstable
	
	method cambiaEstado(){
		esEstable = !esEstable
	}
	
	method precioKm(){
		if (esEstable){
			return 30
		}
		else {
			return 25
		}
	}
}

object teresa{
	var property precioKm = 22
	
}

object melina {
	var property trabaja
	
	method precioKm() = trabaja.precioKm() - 3
	
	}