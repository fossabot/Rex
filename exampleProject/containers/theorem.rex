container THEOREM {
	argument add title: String = REX.emptyString;
	argument add color: String = REX.emptyString;

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