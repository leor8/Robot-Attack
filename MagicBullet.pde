class MagicBullet extends Bullet{
  PVector dim;
  
  MagicBullet(PVector pos, PVector vel){
    super(pos, vel);
    dim = new PVector(20, 10);
    alive = true;
  }
  
  void update() {
    super.update();
  }
  
  void drawMe() {
    pushMatrix();
    translate(pos.x, pos.y);
    noStroke();
    fill(128, 0, 128);
    rect(-dim.x/2, -dim.y/2, dim.x, dim.y);
    popMatrix();
  }
}