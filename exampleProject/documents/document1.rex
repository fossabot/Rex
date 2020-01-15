REX.setSetting {
    name language
    value nl
}

REX.addProcessor {
    name PDF
    type pdflatex
}

REX.addProcessor {
    name PDFONLINE
    type pdflatex
}

REX.addProcessor {
    name HTML
    type html
}

REX.DOCUMENT {
    paperSize A4
}{
    REX.PARAGRAPH{
        title titel van de paragraaf
    }{
        Dit is een paragraaf.
    }

    L.THEOREM{
        title De stelling van Pythagoras
    }{
        Voor een rechthoekige driehoek met rechthoekszijden REX.MATH{a} en REX.MATH{b} en schuine zijde REX.MATH{c} geldt: 
        REX.MATH{type display}{content a^2+b^2 = c^2}
    }
}