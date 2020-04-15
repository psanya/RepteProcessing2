class Walker {
 
  int x;
  int y;
  PVector posicio = new PVector();
  int choice;
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  Walker (int x, int y) {
    
    this.x = x;
    this.y = y;
  }
  
  public void walk() {
  
  choice = int(random(4));
  
    if (choice == 0) {
      x++;
    }
    
    else if (choice == 1) {
      x--;
    }
    
    else if (choice == 2) {
      y++;
    } 
    else {
      y--;  
    }
    
  }
  
  public void display(int posX, int posY, int c1, int c2, int c3) {
    fill(c1,c2,c3);
    
    int calcul1 = (posX + x) / 2;
    int calcul2 = (posY + y) / 2;
    
    circle(calcul1, calcul2, 30);
    
    posicio.x = calcul1;
    posicio.y = calcul2;
  }
  
  public PVector getPosicio() {
  
    return posicio;
  }
  
}
