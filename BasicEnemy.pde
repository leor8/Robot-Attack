class BasicEnemy extends Enemy {

  int j = 0; // current index for image
  PImage[] activeBe;

  BasicEnemy(PVector pos, PVector vel, PVector acc, int health, int sizeUnit, int attackRange, PVector dim, int dmg) {
    super(pos, vel, acc, health, sizeUnit, attackRange, dim, dmg);

    activeBe = walkingBe;
  }

  void update() {
    super.update();
    println(j);
    if (frameCount%6 == 0) {
      j++;

      switch(stateBe) {
      case 0:
        if (j == walkingBe.length) {
          j = 0;
        }

        activeBe = walkingBe;

        break;
      case 1:
        j = 0;
        activeBe = attackingBe;

        break;
      }
    }
  }

  void render() {
    pushMatrix();
    translate(pos.x, pos.y);
    scale(0.5);
    //fill(0, 0, 255);
    //noStroke();
    //ellipse(0, 0, dim.x, dim.y);
    PImage img = activeBe[j];
    image(img, -img.width/2, -img.height/2);
    popMatrix();
  }

  // Remove current target
  boolean killed() {
    be.remove(this);
    be2.remove(this);
    be3.remove(this);
    be4.remove(this);
    if (pos.y == 520) {
      bottom = false;
    }
    if (pos.y == 360) {
      middle = false;
    }
    if (pos.y == 200) {
      top = false;
    }
    return true;
  }

  void detect() {
    // This method detects if the each spot has a tower or not and reacting
    if (build1_1 && pos.x <= 320 && pos.x >= 170 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_2 && pos.x <= 320 && pos.x >= 170 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_3 && pos.x <= 320 && pos.x >= 170 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_6 && pos.x >= 330 && pos.x <= 490 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_5 && pos.x >= 330 && pos.x <= 490 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_4 && pos.x >= 330 && pos.x <= 490 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_7 && pos.x >= 500 && pos.x <= 660 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_8 && pos.x >= 500 && pos.x <= 660 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_9 && pos.x >= 500 && pos.x <= 660 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_10 && pos.x >= 670 && pos.x <= 830 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_11 && pos.x >= 670 && pos.x <= 830 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_12 && pos.x >= 670 && pos.x <= 830 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_13 && pos.x >= 840 && pos.x <= 1000 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_14 && pos.x >= 840 && pos.x <= 1000 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_15 && pos.x >= 840 && pos.x <= 1000 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_16 && pos.x >= 1010 && pos.x <= 1170 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_17 && pos.x >= 1010 && pos.x <= 1170 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_18 && pos.x >= 1010 && pos.x <= 1170 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_19 && pos.x >= 1180 && pos.x <= 1340 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_20 && pos.x >= 1180 && pos.x <= 1340 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_21 && pos.x >= 1180 && pos.x <= 1340 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_22 && pos.x >= 1350 && pos.x <= 1510 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_23 && pos.x >= 1350 && pos.x <= 1510 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_24 && pos.x >= 1350 && pos.x <= 1510 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_25 && pos.x >= 1520 && pos.x <= 1680 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_26 && pos.x >= 1520 && pos.x <= 1680 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_27 && pos.x >= 1520 && pos.x <= 1680 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_28 && pos.x >= 1690 && pos.x <= 1850 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_29 && pos.x >= 1690 && pos.x <= 1850 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else if (build1_30 && pos.x >= 1690 && pos.x <= 1850 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateBe == 0) {
        stateBe = 1;
      }
    } else {
      vel.x = pVelocityX;
      if (stateBe == 1) {
        stateBe = 0;
      }
    }
  }
}