class DestroyBullet extends Bullet {
  PVector dim;

  DestroyBullet(PVector pos, PVector vel) {
    super(pos, vel);
    dim = new PVector(30, 30);
    alive = true;
  }

  void update() {
    super.update();
  }

  void drawMe() {
    pushMatrix();
    translate(pos.x, pos.y);
    noStroke();
    fill(254, 91, 53);
    ellipse(0, 0, dim.x, dim.y);
    fill(204, 114, 105);
    ellipse(0, 0, dim.x/3, dim.y/3);
    popMatrix();
  }
}