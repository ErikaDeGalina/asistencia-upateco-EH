private Dado dado;
public void setup() { size (400,400);
}
dado new Dado();
//dado.posicion = new PVector (width/2, height/2); //asi no es válido dado.setPosicion (new PVector (width/2, height/2)); // eso si es válido //dado.lado = 100; //asi no
dado.setLado (100);
public void draw(){
//background(0);
}
public void keyPressed() {
if (key=='a'){ // NO LO TOMO!!! println("La presionó"); dado.tirarDado();
background(0);
dado.dibujar();
mostrarValor();
}
public void mostrarValor() { String texto Amostrar="""; switch(dado.getValor()) { case 1:
textoAmostrar = "Uno";
break;
case 2:{
textoAmostrar = "Dos";
break;
}
}
textSize(20);
text(textoAmostrar, 100, 20);
}
