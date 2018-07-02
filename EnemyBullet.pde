class EnemyBullet extends Bullet {
  PVector dim;
  PVector Ppos;

  EnemyBullet(PVector pos, PVector vel) {
    super(pos, vel);
    alive = true;
    dim = new PVector(10, 10);
    Ppos = pos;
  }

  void update() {
    super.update();
  }

  void checkWall() {
    if (pos.x < 0) {
      alive=false;
    }
  }

  void drawMe() {
    pushMatrix();
    noStroke();
    fill(0, 0, 255);
    translate(pos.x, pos.y);
    rect(-dim.x/2, -dim.y/2, dim.x, dim.y);
    popMatrix();
  }
}