//  Declaració de les variables necessàries.
PVector posicio;
PVector speed;
float magnitud;

PVector center;
PVector mouse;

//  En el mètode setup() inicialitzem les variables.
void setup() {
  size (1280,720);
  
  posicio = new PVector(0, 0);
  speed = new PVector(3,2);
  magnitud = 3;
  
  posicio.mult(magnitud);
  
  center = new PVector(width/2, height/2);
}

//  En el draw, anem creant un vector segons la posició en la que es troba el ratolí, dibuixem una línia des del centre fins aquest i mostrem el valor en pantalla.
void draw() {
  background(255);

  mouse = new PVector(mouseX, mouseY);
  mouse.sub(center);
  
  //  Si treiem el comentari d'aquestes dues línies creem el punt 4 amb la línia normalitzada.
  //mouse.normalize();
  //mouse.mult(250);

  float m = mouse.getMagnitud();
  String s = "" + m;
  fill(50);
  text(s, 10, 10, 70, 80);
  
  translate(width/2, height/2);
  line(0, 0,mouse.x, mouse.y);
  
}
