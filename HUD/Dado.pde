class Dado{
  //los atributos
  private int valor;
  private int lado;
  private PVector posicion;
  //los constructores
  public Dado(){
  }
  //los metodos comunes
  public void dibujar(){
   rectMode(CENTER);
   strokeWeight(1);
   square(this.posicion.x,this.posicion.y, this.lado);
   switch(this.valor){
     case 1:{
       strokeWeight(15);
       point(this.posicion.x,this.posicion.y);
       break;
     }
     case 2:{
       strokeWeight(15);
       point(this.posicion.x - (this.lado/2)+20,this.posicion.y + (this.lado/2)-20);
       point(this.posicion.x + (this.lado/2)-20,this.posicion.y - (this.lado/2)+20);
       break;
     }
   }
 }
 public void tirarDado(){
   this.valor = int(random(1,3));
 }
   //los metodos accesores (getters y settets)
   public void setPosicion(PVector posicion){
     this.posicion=posicion;
   }
   public void setLado(int lado){
   this.lado=lado;
   }
   public int getValor(){
     return this.valor;
   }
}
