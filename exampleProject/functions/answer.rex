function answer {
	parameter add result: String | Number | MathFormula

	@HTML
	run(){	
		HTML(<input type="text"></input>) // HTML method is available because it defined in the HTML processor
	}

	@PDF
	run(){
		result
	}

	@PDFONLINE
	run(){
		result
	}
}