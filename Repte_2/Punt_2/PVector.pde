/**
  
  Classe PVector que ens permetra sumar, restar, multiplicar, dividir i normalitzar un vector.
  Així com també, saber-ne la magnitud.

*/

class PVector {

  float x;
  float y;
  
  PVector() {
  
  }
  
  PVector(float x, float y) {
  
    this.x = x;
    this.y = y;
  
  }

  //Sumem un vector al vector de la classe.
  void add(PVector v) {
  
    this.x = this.x + v.x;
    this.y = this.y + v.y;
  
  }

  //Sumem un vector al vector de la classe.
  void sub(PVector v) {
  
    this.x = this.x - v.x;
    this.y = this.y - v.y;
  
  }

  void mult(float scalar) {
  
    this.x = this.x * scalar;
    this.y = this.y * scalar;
    
  }
  
   //Sumem un vector al vector de la classe.
  void mult(PVector v) {
  
    this.x = this.x * v.x;
    this.y = this.y * v.y;
  
  }

  void div(float mag) {
  
    this.x = this.x / mag;
    this.y = this.y / mag;
    
  }

  float getMagnitud() {
  
    return sqrt(x*x + y*y);
  
  }

  void normalize() {
  
    float m = getMagnitud();
    
    if (m != 0) {
      div(m);
    }
    else {
      print("El valor " + m + " es 0 actualment i no s'ha pogut normalitzar");
    }
    
  }

}
