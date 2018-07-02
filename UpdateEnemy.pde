class UpdateEnemy extends Enemy {
  
  int j = 0; // current index for image
  PImage[] activeUe;

  UpdateEnemy(PVector pos, PVector vel, PVector acc, int health, int sizeUnit, int attackRange, PVector dim, int dmg) {
    super(pos, vel, acc, health, sizeUnit, attackRange, dim, dmg);

    activeUe = walkingUe;
  }

  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    scale(0.5);
    PImage img = activeUe[j];
    image(img, -img.width/2, -img.height/2);
    popMatrix();
  }

  void update() {
    super.update();
    if (frameCount%6 == 0) {
      j++;

      switch(stateUe) {
      case 0:
        if (j == walkingUe.length) {
          j = 0;
        }

        activeUe = walkingUe;

        break;
      case 1:
        j = 0;
        activeUe = attackingUe;

        break;
      }
    }
  }
  
  // Remove current target
  boolean killed(){
    ue.remove(this);
    ue2.remove(this);
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