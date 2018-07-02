class TankEnemy extends Enemy {
  
  int j = 0; // current index for image
  PImage[] activeTe;

  TankEnemy(PVector pos, PVector vel, PVector acc, int health, int sizeUnit, int attackRange, PVector dim, int dmg) {
    super(pos, vel, acc, health, sizeUnit, attackRange, dim, dmg);

    activeTe = walkingTe;
  }

  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    scale(0.5);
    PImage img = activeTe[j];
    image(img, -img.width/2, -img.height/2);
    popMatrix();
  }

  void update() {
    super.update();
    if (frameCount%6 == 0) {
      j++;

      switch(stateTe) {
      case 0:
        if (j == walkingTe.length) {
          j = 0;
        }

        activeTe = walkingTe;

        break;
      case 1:
        j = 0;
        activeTe = attackingTe;

        break;
      }
    }
  }
  
  // Remove current target
  boolean killed(){ // destructor
    te.remove(this);
    te2.remove(this);
    te3.remove(this);
    if(pos.y == 520){
      bottom = false;
    }
    if(pos.y == 360){
      middle = false;
    }
    if(pos.y == 200){
      top = false;
    }
    return true;
  }
}