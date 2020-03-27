Walker agent;

//int x = width/2;
//int y = height/2;

void setup() {
  size (1280,720);
  agent = new Walker();
}


void draw() {
  //background(255);
  agent.display();
  agent.walk();
}
