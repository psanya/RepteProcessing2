/**

Classe Character que conté els atributs necesàris dels elements, getters i setters. 
Així com un constructor buit i un amb paràmetres.

*/
class Character extends Walker {

  private int vides;
  private String nom;
 
  
  Character() {
  }
  
  Character(int v, String n) {
    this.vides = v;
    this.nom = n;
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
  
}
