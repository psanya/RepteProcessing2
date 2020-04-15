class Character extends Walker {

  private int vides;
  private String nom;
  private PImage imatge;
  private int posX;
  private int posY; 
  
  Character() {
  }
  
  Character(int v, String n, int posX, int posY) {
    this.vides = v;
    this.nom = n;
    this.x = posX;
    this.y = posY;
  }
  
  public void setVides(int v) {
    this.vides = v;
  }

  public int getVides() {
    return this.vides;
  }

  public void setNom(String n) {
    this.nom = n;
  }

  public String getNom() {
    return this.nom;
  }

  public void setImatge(PImage p) {
    this.imatge = p;
  }
  
  public PImage getImatge() {
    return imatge;
  }
  
  public void setX(int posX) {
    this.x = posX;
  }
  
  public int getX() {
    return this.x; 
  }
  
  public void setY(int posY) {
    this.vides = posY;
  }

  public int getY() {
    return this.y; 
  }
  
  public void crearWarrior() {
    fill(0, 163, 0);     
    circle(posX-30, posY, 30);
    //image (img, x, y);
  }
  
  public void crearEnemy() {
    fill(196, 0, 0);  
    circle(posX+30, posY, 30);  
    //image (img, x, y);
  }
 
}
