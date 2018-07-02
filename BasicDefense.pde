class BasicDefense extends DefenseTower {

  PImage basicd;
  
  BasicDefense(PVector pos, int health, PVector dim) {
    super(pos, health, dim);
    basicd = loadImage("BasicDefense.png");
  }

  void update() {
    super.update();
    render();
  }

  void render() {
    pushMatrix();
    translate(pos.x + 50, pos.y + 10);
    scale(0.3);
    image(basicd, -basicd.width/2, -basicd.height/2);
    popMatrix();
  }

  // Remove current target
  void killed() {
    bd.remove(this);
    // Checking the position of each towers killed
    if (build1_1 && pos.x == 170 && pos.y == 190) {
      build1_1 = false;
    } 
    if (build1_2 && pos.x == 170 && pos.y == 350) {
      build1_2 = false;
    }
    if (build1_3 && pos.x == 170 && pos.y == 510) {
      build1_3 = false;
    }
    if (build1_4 && pos.x == 330 && pos.y == 190) {
      build1_4 = false;
    }
    if (build1_5 && pos.x == 330 && pos.y == 350) {
      build1_5 = false;
    }
    if (build1_6 && pos.x == 330 && pos.y == 510) {
      build1_6 = false;
    }
    if (build1_7 && pos.x == 490 && pos.y == 190) {
      build1_7 = false;
    }
    if (build1_8 && pos.x == 490 && pos.y == 350) {
      build1_8 = false;
    }
    if (build1_9 && pos.x == 490 && pos.y == 510) {
      build1_9 = false;
    }
    if (build1_10 && pos.x == 650 && pos.y == 190) {
      build1_10 = false;
    }
    if (build1_11 && pos.x == 650 && pos.y == 350) {
      build1_11 = false;
    }
    if (build1_12 && pos.x == 650 && pos.y == 510) {
      build1_12 = false;
    }
    if (build1_13 && pos.x == 810 && pos.y == 190) {
      build1_13 = false;
    }
    if (build1_14 && pos.x == 810 && pos.y == 350) {
      build1_14 = false;
    }
    if (build1_15 && pos.x == 810 && pos.y == 510) {
      build1_15 = false;
    }
    if (build1_16 && pos.x == 970 && pos.y == 190) {
      build1_16 = false;
    }
    if (build1_17 && pos.x == 970 && pos.y == 350) {
      build1_17 = false;
    }
    if (build1_18 && pos.x == 970 && pos.y == 510) {
      build1_18 = false;
    }
    if (build1_19 && pos.x == 1130 && pos.y == 190) {
      build1_19 = false;
    }
    if (build1_20 && pos.x == 1130 && pos.y == 350) {
      build1_20 = false;
    }
    if (build1_21 && pos.x == 1130 && pos.y == 510) {
      build1_21 = false;
    }
    if (build1_22 && pos.x == 1290 && pos.y == 190) {
      build1_22 = false;
    }
    if (build1_23 && pos.x == 1290 && pos.y == 350) {
      build1_23 = false;
    }
    if (build1_24 && pos.x == 1290 && pos.y == 510) {
      build1_24 = false;
    }
    if (build1_25 && pos.x == 1450 && pos.y == 190) {
      build1_25 = false;
    }
    if (build1_26 && pos.x == 1450 && pos.y == 350) {
      build1_26 = false;
    }
    if (build1_27 && pos.x == 1450 && pos.y == 510) {
      build1_27 = false;
    }
    if (build1_28 && pos.x == 1610 && pos.y == 190) {
      build1_28 = false;
    }
    if (build1_29 && pos.x == 1610 && pos.y == 350) {
      build1_29 = false;
    }
    if (build1_30 && pos.x == 1610 && pos.y == 510) {
      build1_30 = false;
    }
  }
}