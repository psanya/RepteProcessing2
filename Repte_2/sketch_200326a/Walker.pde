class Walker {
 
  int x;
  int y;
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  Walker (int x, int y) {
    
    this.x = x;
    this.y = y;
  }
  
  void walk() {
  
  int choice = int(random(4));
  
    if (choice == 0) {
      x--;
    }
    
    if (choice == 1) {
      x++;
    }
    
    if (choice == 2) {
      y--;
    } 
    else {
      y++;  
    }
    
  }
  
  void display() {
    
    point(x,y);
  
  }
  
}
