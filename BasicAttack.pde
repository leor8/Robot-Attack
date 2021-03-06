class BasicAttack extends AttackTower {
  int framesBA = 0;
  ArrayList<BasicBullet> bulletsBA = new ArrayList<BasicBullet>();
  
  PImage basicAttack;

  BasicAttack(PVector pos, int health, int dmg, int attackSpeed, PVector vel, PVector dim) {
    super(pos, health, dmg, attackSpeed, vel, dim);
    basicAttack = loadImage("BasicTower.png");
  }
  void fire() {
    bulletsBA.add(new BasicBullet(new PVector(pos.x + 45, pos.y + 15), new PVector(12, 0)));
  }

  void checkProjectiles() {
    for (int i=0; i<bulletsBA.size(); i++) {
      BasicBullet bulletba = bulletsBA.get(i);
      //update the bullet
      bulletba.update();  

      // Kill BasicEnemy 
      // Day 1 
      for (int j = 0; j < be.size(); j++) {
        BasicEnemy be1 = be.get(j);
        if (bulletba.hitCharacter(be1)) {
          bulletba.hitBasicEnemy(be1, dmg);
        }
      }
      // Day 2
      for (int j = 0; j < be2.size(); j++) {
        BasicEnemy be1 = be2.get(j);
        if (bulletba.hitCharacter(be1)) {
          bulletba.hitBasicEnemy(be1, dmg);
        }
      }
      // Day 3
      for (int j = 0; j < be3.size(); j++) {
        BasicEnemy be1 = be3.get(j);
        if (bulletba.hitCharacter(be1)) {
          bulletba.hitBasicEnemy(be1, dmg);
        }
      }
      // Day 4
      for (int j = 0; j < be4.size(); j++) {
        BasicEnemy be1 = be4.get(j);
        if (bulletba.hitCharacter(be1)) {
          bulletba.hitBasicEnemy(be1, dmg);
        }
      }

      // Kill FastEnemy
      // Day 1
      for (int j = 0; j < fe.size(); j++) {
        FastEnemy fe1 = fe.get(j);
        if (bulletba.hitCharacter(fe1)) {
          bulletba.hitFastEnemy(fe1, dmg);
        }
      }
      // Day 2
      for (int j = 0; j < fe2.size(); j++) {
        FastEnemy fe1 = fe2.get(j);
        if (bulletba.hitCharacter(fe1)) {
          bulletba.hitFastEnemy(fe1, dmg);
        }
      }
      // Day 3
      for (int j = 0; j < fe3.size(); j++) {
        FastEnemy fe1 = fe3.get(j);
        if (bulletba.hitCharacter(fe1)) {
          bulletba.hitFastEnemy(fe1, dmg);
        }
      }
      // Day 4
      for (int j = 0; j < fe4.size(); j++) {
        FastEnemy fe1 = fe4.get(j);
        if (bulletba.hitCharacter(fe1)) {
          bulletba.hitFastEnemy(fe1, dmg);
        }
      }

      // kill TankEnemy 
      // Day 2
      for (int j = 0; j < te.size(); j++) {
        TankEnemy te1 = te.get(j);
        if (bulletba.hitCharacter(te1)) {
          bulletba.hitTankEnemy(te1, dmg);
        }
      }
      // Day 3
      for (int j = 0; j < te2.size(); j++) {
        TankEnemy te1 = te2.get(j);
        if (bulletba.hitCharacter(te1)) {
          bulletba.hitTankEnemy(te1, dmg);
        }
      }
      // Day 4
      for (int j = 0; j < te3.size(); j++) {
        TankEnemy te1 = te3.get(j);
        if (bulletba.hitCharacter(te1)) {
          bulletba.hitTankEnemy(te1, dmg);
        }
      }
      
      // Kill Update Enemy
      // Day 3
      for (int j = 0; j < ue.size(); j++) {
        UpdateEnemy ue1 = ue.get(j);
        if (bulletba.hitCharacter(ue1)) {
          bulletba.hitUpdateEnemy(ue1, dmg);
        }
      }
      // Day 4
      for (int j = 0; j < ue2.size(); j++) {
        UpdateEnemy ue1 = ue2.get(j);
        if (bulletba.hitCharacter(ue1)) {
          bulletba.hitUpdateEnemy(ue1, dmg);
        }
      }
      

      if (!bulletba.alive) {
        bulletsBA.remove(i);
      }
    }
  }

  void update() {
    super.update();
    framesBA++;
    if (framesBA > attackSpeed) {
      framesBA = 0;
    }
    if (be.size() > 0 || fe.size() > 0 || be2.size() > 0 || fe2.size() > 0 || te.size() > 0 || be3.size() > 0 || be4.size() > 0 || fe3.size() > 0 || fe4.size() > 0 || te2.size() > 0 || te3.size() > 0 || ue.size() > 0 || ue2.size() > 0 || bossAlive) {
      if (framesBA == attackSpeed && ((pos.y == 190 && top) || (pos.y == 350 && middle) || (pos.y == 510 && bottom))) {
        framesBA = 0;
        fire();
      }
    }
    checkProjectiles();
    render();
  }

  void render() {
    pushMatrix();
    translate(pos.x + 30, pos.y + 10);
    scale(0.3);
    image(basicAttack, -basicAttack.width/2, -basicAttack.height/2);
    popMatrix();
  }

  // Remove current target
  void killed() {
    ba.remove(this);
    // Checking the position of each towers killed
    if (build1_1 && pos.x == 170 && pos.y == 190) {
      build1_1 = false;
    } 
    if (build1_2 && pos.x == 170 && pos.y == 350) {
      build1_2 = false;
      println("ba2");
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