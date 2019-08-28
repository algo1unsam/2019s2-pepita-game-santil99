import ciudades.*
import wollok.game.*
import comidas.*


object roque {
	
	var property position = game.at(2,3)
	var tiene 
	
	method image() = "jugador.png"
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)	
		
	}	
	
	method queTiene() {
		return tiene
	}
	
	method tieneAlgo(algo){
		tiene = algo
	} 
	
	
	
	
	
	
}
