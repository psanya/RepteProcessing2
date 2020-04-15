//  Declaració de les variables necessàries.
PVector dirPilota, vel;
float xSpeed = 3.0;
float ySpeed = 3.0;
float r = 25, g = 155, b = 98;

//  En el setup inicializem el cercle a la posició central de la pantalla i la velocitat que desitjem.
void setup() {
  size(1280,720);
  background(255);
  dirPilota = new PVector(width/2, height/2);
  vel = new PVector(3.0, 3.0);
  
  fill(0);
  circle(dirPilota.x, dirPilota.y, 40);
}

//  Cada frame que passem pel draw, cridem el mètode add() de la classe PVector per anar afegint a l'eix corresponent els valors del vector "vel".
//  Si arriba a un dels laterals de la pantalla, rebota mantenint la velocitat que portava però invertint la direcció.
void draw() {
  background(255);
  
  dirPilota.add(vel);
  
  if ((dirPilota.x > width) || (dirPilota.x < 0)) {
    vel.x = vel.x * -1;
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
  }
  
  else if ((dirPilota.y > height) || (dirPilota.y < 0)) {
    vel.y = vel.y * -1;
    r = random(0,255);
    g = random(0,255);
    b = random(0,255);
  }
  
  fill(r, g, b);
  
  circle(dirPilota.x, dirPilota.y, 55);
}
