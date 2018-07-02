class BasicBullet extends Bullet{
  PVector dim;
  
  BasicBullet(PVector pos, PVector vel){
    super(pos, vel);
    dim = new PVector(10, 10);
    alive = true;
  }
  
  void update() {
    super.update();
  }
  
  void drawMe() {
    pushMatrix();
    translate(pos.x, pos.y);
    noStroke();
    fill(0);
    ellipse(0, 0, dim.x, dim.y);
    popMatrix();
  }
}