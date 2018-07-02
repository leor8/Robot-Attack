// This is the tower class, the super class of all different types of towers
// Zheyuan Ruan (Leo)
// Last update: 3/14/2017

class Tower{
  PVector pos;
  int health;
  PVector dim;
  
  Tower(PVector pos, int health, PVector dim) {
    this.pos = pos;
    this.health = health;
    this.dim = dim;
  }
  
  void decLife(double dmg){
    
    health -= dmg;
  }
  
  void update(){
    render();
  }
  
  void render() {
    stroke(0);
    strokeWeight(1);
    point(pos.x, pos.y);
  }
  
}