object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30

	method energia() {
		return energia
	}
	method comer(comida) {
		energia = energia + comida.energiaQueAporta() * 0.5
	}
	method volar(distancia) {
		energia = energia - 20 - distancia * 2
	}
}

object roque {
	var ave = pepita
	var vecesQueAlimentoASuAve = 0

	method tieneA(_ave) {
		ave = _ave
		vecesQueAlimentoASuAve = 0
	}
	method alimentar(comida) {
		ave.comer(comida)
		vecesQueAlimentoASuAve = vecesQueAlimentoASuAve + 1
	}
	method cenas() {
		return vecesQueAlimentoASuAve
	}
}