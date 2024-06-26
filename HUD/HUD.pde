private Dado dado;

public void setup(){
  size(400, 400);
  dado = new Dado();
  dado.setPosicion(new PVector(width/2, height/2));
  dado.setLado(100);
}

public void draw(){
}

public void keyPressed(){
  if(key == 'a') {
    dado.tirarDado();
    background(0);
    dado.dibujar();
    mostrarValor();
  }
}

public void mostrarValor(){
  String textoAmostrar = "";
  switch(dado.getValor()){
    case 1:
      textoAmostrar = "Uno";
      break;
    case 2:
      textoAmostrar = "Dos";
      break;
    case 3:
      textoAmostrar = "Tres";
      break;
    case 4:
      textoAmostrar = "Cuatro";
      break;
    case 5:
      textoAmostrar = "Cinco";
      break;
    case 6:
      textoAmostrar = "Seis";
      break;
  }
  textSize(20);
  text(textoAmostrar, 100, 20);
}
