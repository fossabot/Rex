container EXAMPLE : THEOREM {
	argument change title: string = other default title // overwrite default title
	argument freeze color: M.Color = red; // freeze value of color argument, it's not an argument anymore

	@HTML // return type = HTML-object = templating
	content(content: Content, style: CSS-object){
	
	}

	@PDF
	content(content: Content, style: Style-object) {
	
	}

	@ONLINEPDF
	content(content: Content, style: Style-object) {
	
	}

	@HTML // return type = CSS-object
	styling(currentStyle: CSS-object) {
		
	}

	@PDF // return PDF-Style-object
	styling(currentStyle: Style-object) {
	
	}

	@ONLINEPDF // return PDF-Style-object
	styling(currentStyle: Style-object){
	
	}
}