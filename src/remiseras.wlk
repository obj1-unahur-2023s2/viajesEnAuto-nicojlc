import clientes.*


object roxana {
	
	method precioViaje(cliente, km) {
		 return cliente.precioKm() * km
	}
}

object gabriela {
	
	method precioViaje(cliente, km) {
		return cliente.precioKm() * km * 1.2
	}
}

object mariela {
	
	method precioViaje(cliente, km) {
		return 50.max(cliente.precioKm() * km)
	}
}

object juana {
	
	method precioViaje(cliente, km) {
		if (km <= 8) {
			return 100
		}
		else {
			return 200
		}
	}
}


object lucia{
	var reemplaza
	
	method reemplaza() = reemplaza
	method reemplaza(remisera){
		if (self == remisera)
			self.error("No se puede reemplazar a si mismo")
			reemplaza = remisera
	} 

	method precioViaje(cliente, km) = reemplaza.precioViaje(cliente, km)
}