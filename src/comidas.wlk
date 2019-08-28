import wollok.game.*
import roque.*

object manzana {
	method image() = "manzana.png"
	method position() = game.at(5,1)
	method energia() = 80
	method teEncontraron(alguien) {
		if(not(roque.queTiene())){
			game.removeVisual(self)
			roque.tieneAlgo(self)
		}else{
			game.addVisualIn(roque.queTiene(), game.at(5,3))
		}
	}
}


object alpiste {
	method image() = "alpiste.png"
	method position() = game.at(5,5)
	method energia() = 5
	method teEncontraron(alguien) {
		if(not(roque.queTiene())){
			game.removeVisual(self)
			roque.tieneAlgo(self)
		}else{
			game.addVisualIn(roque.queTiene(), game.at(5,4))
		}
	}
}
