import ciudades.*
import wollok.game.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	
	method teEncontraron(roque){
		game.say(self, "Hola")
	}
	
	method image(){
		if(energia <= 100) {
			return "pepita.png"
		} else {
			return "pepita-gorda-raw.png"
		}
	} 

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volarComer(comida){
		self.move(comida.position())
		game.removeVisual(comida)
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
			
		}else {
			game.say(self, "Ya estoy en " + unaCiudad.nombre())
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	
	
	method move(nuevaPosicion) {
		if( self.energia() > self.energiaParaVolar(position.distance(nuevaPosicion))){
			energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
			self.position(nuevaPosicion)
		} else {
			game.say(self, "Dame de comer primero!")
		}
		
	}	
}
