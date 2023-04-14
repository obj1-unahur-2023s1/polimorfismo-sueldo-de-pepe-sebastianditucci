import bonos.*
import categorias.*

object pepe {
	var categoriaActual = self.getCategoria()
	var bonoPresentismo = self.getBonoPresentismo()
	var bonoResultado = self.getBonoResultado()
	var cantFaltas = 0
	method setFaltas(faltas) {
		cantFaltas = faltas
	}
	method faltas() = cantFaltas
	method setCategoria(categoria) {
		categoriaActual = categoria
	}
	method getCategoria() = categoriaActual
	method setBonoPresentismo(bono) {
		bonoPresentismo = bono
	}
	method getBonoPresentismo() = bonoPresentismo
	method setBonoResultado(bono) {
		if (bono != bonoDependeFaltas) {
			bonoResultado = bono
		}
	}
	method getBonoResultado() = bonoResultado
	method sueldoNeto() = categoriaActual.neto()
	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
	}
}
