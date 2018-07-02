class FastEnemy extends Enemy {

  int j = 0; // current index for image
  PImage[] activeFe;

  FastEnemy(PVector pos, PVector vel, PVector acc, int health, int sizeUnit, int attackRange, PVector dim, int dmg) {
    super(pos, vel, acc, health, sizeUnit, attackRange, dim, dmg);

    activeFe = walkingFe;
  }

  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    //fill(0, 255, 255);
    //noStroke();
    //ellipse(0, 0, dim.x, dim.y);
    scale(0.5);
    PImage img = activeFe[j];
    image(img, -img.width/2, -img.height/2);
    popMatrix();
  }

  void update() {
    super.update();
    if (frameCount%6 == 0) {
      j++;

      switch(stateFe) {
      case 0:
        if (j == walkingFe.length) {
          j = 0;
        }

        activeFe = walkingFe;

        break;
      case 1:
        j = 0;
        activeFe = attackingFe;

        break;
      }
    }
  }
  
  // Remove current target
  boolean killed(){
    fe.remove(this);
    fe2.remove(this);
    fe3.remove(this);
    fe4.remove(this);
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