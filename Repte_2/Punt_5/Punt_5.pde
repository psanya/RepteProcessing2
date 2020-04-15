Character warrior, enemy;
PVector posW, posE, posicioWinner;
int x,y, wX, wY, eX, eY;
String nomW, nomE; 
float m;

void setup() {
  size (1280,720);
  x = width/2;
  y = height/2;

  warrior = new Character();
  enemy = new Character();
 
  warrior.setVides(1);
  warrior.setNom("Warrior");

  enemy.setVides(1);
  enemy.setNom("Enemy");
  
  nomW = warrior.getNom();
  nomE = enemy.getNom();
  
  warrior.x = width/2 - 30;
  warrior.y = height/2;
  
  enemy.x = width/2 + 30;
  enemy.y = height/2;

  
}

void draw() {
  background(255);
  fill(0);
  text("Nom Warrior:\n   " + warrior.getNom(), 10, 40);
  text("Nom Enemy:\n   " + enemy.getNom(), width - 150, 40);
  
  wX = warrior.getX();
  wY = warrior.getY();
  eX = enemy.getX();
  eY = enemy.getY();
  
  posW = new PVector(wX, wY);
  posE = new PVector(eX, wY);
  
  posW.sub(posE);
  
  m = posW.getMagnitud();
  String s = "" + m;

  warrior.display(wX, wY, 0,163,0);
  warrior.walk();
  fill(0, 163, 0);
  textSize(14);
  text(nomW, wX - 25, wY + 30);
  text("Vides W:\n     " + warrior.getVides(), wX - 25, wY - 45);
  
  enemy.display(eX, eY, 196,0,0);
  enemy.walk();
  fill(196, 0, 0);
  text(nomE, eX - 20, eY + 30);
  text("Vides E:\n    " + enemy.getVides(), eX - 20, eY - 45);
  
  if (m > 80) {
    fill(0, 163, 0);
  }
  
  else if (m < 55) {
    fill(196, 0, 0);  
  }
  
  else {
    fill(0);
  }
  textSize(20);
  text("Distància: \n   " + s, x-30, 40);
  
  line(wX, wY, eX, eY);
  
  if (m < 30) {
    warrior.setVides(warrior.getVides() - 1);
    restart();
    
      if (warrior.getVides() == 0) {
        background(255);
        
        posicioWinner = enemy.getPosicio();
        fill(196,0,0);
        circle(posicioWinner.x, posicioWinner.y, 30);
        
        
        fill(196, 0, 0);
        textSize(20);
        text("Distància: \n   " + s, x-30, 40);
   
        warrior.setNom("Loser");
        enemy.setNom("Winner");
        
        fill(0);
        text("Nom Warrior:\n   " + warrior.getNom(), 10, 40);
        text("Nom Enemy:\n   " + enemy.getNom(), width - 150, 40);
  
        textSize(26);
        text("Enemy Wins!", x-60, y);      
        stop();
        //delay(10000);
        //exit();
      }
  }
  else if (m > 100) {
    enemy.setVides(enemy.getVides() - 1);
    restart();
    
      if (enemy.getVides() == 0) {
        background(255);
        posicioWinner = warrior.getPosicio();
        fill(0,163,0);
        circle(posicioWinner.x, posicioWinner.y, 30);
        
        fill(0, 163, 0);
        textSize(20);
        text("Distància: \n   " + s, x-30, 40);
  
        warrior.setNom("Winner");
        enemy.setNom("Loser");
        fill(0);
        text("Nom Warrior:\n   " + warrior.getNom(), 10, 40);
        text("Nom Enemy:\n   " + enemy.getNom(), width - 150, 40);
        
        textSize(26);
        text("Warrior Wins!", x-60, y);
        stop();
        //delay(10000);
        //exit();
      }
  }
  
}

private void restart(){

  warrior.x = width/2 - 30;
  warrior.y = height/2;
  
  enemy.x = width/2 + 30;
  enemy.y = height/2;
  
  wX = warrior.getX();
  wY = warrior.getY();
  eX = enemy.getX();
  eY = enemy.getY();
  
  posW = new PVector(wX, wY);
  posE = new PVector(eX, wY);
  
  posW.sub(posE);
  
  m = posW.getMagnitud();
}
