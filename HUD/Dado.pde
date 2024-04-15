class Dado{
  private int valor;
  private int lado;
  private PVector posicion;

  public Dado(){}

  public void dibujar(){
    rectMode(CENTER);
    strokeWeight(1);
    square(this.posicion.x, this.posicion.y, this.lado);
    switch(this.valor){
      case 1:
        dibujarPunto(this.posicion.x, this.posicion.y); // Centro
        break;
      case 2:
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3)); // Arriba izquierda
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); // Abajo derecha
        break;
      case 3:
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3)); // Arriba izquierda
        dibujarPunto(this.posicion.x, this.posicion.y); // Centro
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); // Abajo derecha
        break;
      case 4:
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3)); // Arriba izquierda
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y - (this.lado/3)); // Arriba derecha
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y + (this.lado/3)); // Abajo izquierda
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); // Abajo derecha
        break;
      case 5:
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3)); // Arriba izquierda
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y - (this.lado/3)); // Arriba derecha
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y + (this.lado/3)); // Abajo izquierda
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); // Abajo derecha
        dibujarPunto(this.posicion.x, this.posicion.y); // Centro
        break;
      case 6:
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y - (this.lado/3)); // Arriba izquierda
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y - (this.lado/3)); // Arriba derecha
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y + (this.lado/3)); // Abajo izquierda
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y + (this.lado/3)); // Abajo derecha
        dibujarPunto(this.posicion.x - (this.lado/3), this.posicion.y); // Centro izquierda
        dibujarPunto(this.posicion.x + (this.lado/3), this.posicion.y); // Centro derecha
        break;
    }
  }
  
  private void dibujarPunto(float x, float y){
    strokeWeight(15);
    point(x, y);
  }
  
  public void tirarDado(){
    this.valor = int(random(1, 7));
  }

  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }

  public void setLado(int lado){
    this.lado = lado;
  }

  public int getValor(){
    return this.valor;
  }
}
