class Enemy {
  PVector pos, vel, acc, dim;
  int health, sizeUnit, attackRange;
  double dmg;
  int framesBE = 0;
  float pVelocityX; // previouse x velocity
  ArrayList<EnemyBullet> bulletsBE = new ArrayList<EnemyBullet>();

  Enemy(PVector pos, PVector vel, PVector acc, int health, int sizeUnit, int attackRange, PVector dim, double dmg) {
    this.pos = pos;
    this.vel = vel;
    this.acc = acc;
    this.health = health;
    this.sizeUnit = sizeUnit;
    this.attackRange = attackRange;
    this.dim = dim;
    this.dmg = dmg;
    pVelocityX = vel.x;

    if (pos.y == 520) {
      bottom = true;
    }
    if (pos.y == 360) {
      middle = true;
    }
    if (pos.y == 200) {
      top = true;
    }
  }

  void accelerate(PVector acc) {
    vel.add(acc);
  }

  void move() {
    pos.add(vel);
  }

  void render() {
    stroke(1);
    fill(0);
    point(pos.x, pos.y);
  }

  void update() {
    framesBE++;
    accelerate(acc);
    move();
    render();
    detect();
    checkProjectiles();
    checkWall();
  }

  void decreseHealth(double dmg) {
    health -= dmg;
  }

  void fire() {
    if (framesBE >= 60) {
      framesBE = 0;
      bulletsBE.add(new EnemyBullet(new PVector(pos.x - 15, pos.y), new PVector(-2, 0)));
    }
  }

  void checkWall() {
    if (pos.x < -50) {
      states = 6;
    }
  }

  void checkProjectiles() {
    // Bullet 1
    for (int i=0; i < bulletsBE.size(); i++) {
      EnemyBullet bulletbe = bulletsBE.get(i);
      //update the bullet
      bulletbe.update();

      // Kill BasicTower
      for (int j = 0; j < ba.size(); j++) {
        BasicAttack ba1 = ba.get(j);
        if (bulletbe.hitTower(ba1)) {
          bulletbe.hitBasicTower(ba1, dmg);
        }
      }

      // Kill MagicTower
      for (int j = 0; j < ma.size(); j++) {
        MagicAttack ma1 = ma.get(j);
        if (bulletbe.hitTower(ma1)) {
          bulletbe.hitMagicTower(ma1, dmg);
        }
      }

      // Kill DestroyTower
      for (int j = 0; j < da.size(); j++) {
        DestroyAttack da1 = da.get(j);
        if (bulletbe.hitTower(da1)) {
          bulletbe.hitDestroyTower(da1, dmg);
        }
      }

      // Kill FastTower
      for (int j = 0; j < fa.size(); j++) {
        FastAttack fa1 = fa.get(j);
        if (bulletbe.hitTower(fa1)) {
          bulletbe.hitFastTower(fa1, dmg);
        }
      }

      // Kill basicDefense
      for (int j = 0; j < bd.size(); j++) {
        BasicDefense bd1 = bd.get(j);
        if (bulletbe.hitTower(bd1)) {
          bulletbe.hitBasicDefenseTower(bd1, dmg);
        }
      }

      // Kill upgradeDefense
      for (int j = 0; j < ud.size(); j++) {
        UpgradeDefense ud1 = ud.get(j);
        if (bulletbe.hitTower(ud1)) {
          bulletbe.hitUpgradeDefenseTower(ud1, dmg);
        }
      }

      if (!bulletbe.alive) {
        bulletsBE.remove(i);
      }
    }
  }

  void detect() {
    // This method detects if the each spot has a tower or not and reacting
    if (build1_1 && pos.x <= 320 && pos.x >= 170 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_2 && pos.x <= 320 && pos.x >= 170 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_3 && pos.x <= 320 && pos.x >= 170 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_6 && pos.x >= 330 && pos.x <= 490 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_5 && pos.x >= 330 && pos.x <= 490 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_4 && pos.x >= 330 && pos.x <= 490 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_7 && pos.x >= 500 && pos.x <= 660 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_8 && pos.x >= 500 && pos.x <= 660 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_9 && pos.x >= 500 && pos.x <= 660 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_10 && pos.x >= 670 && pos.x <= 830 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_11 && pos.x >= 670 && pos.x <= 830 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_12 && pos.x >= 670 && pos.x <= 830 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_13 && pos.x >= 840 && pos.x <= 1000 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_14 && pos.x >= 840 && pos.x <= 1000 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_15 && pos.x >= 840 && pos.x <= 1000 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_16 && pos.x >= 1010 && pos.x <= 1170 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_17 && pos.x >= 1010 && pos.x <= 1170 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_18 && pos.x >= 1010 && pos.x <= 1170 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_19 && pos.x >= 1180 && pos.x <= 1340 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_20 && pos.x >= 1180 && pos.x <= 1340 && pos.y == 360) {
      vel.x = 0;
      fire();
     if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_21 && pos.x >= 1180 && pos.x <= 1340 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_22 && pos.x >= 1350 && pos.x <= 1510 && pos.y == 200) {
      vel.x = 0;
      fire();
       if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_23 && pos.x >= 1350 && pos.x <= 1510 && pos.y == 360) {
      vel.x = 0;
      fire();
       if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_24 && pos.x >= 1350 && pos.x <= 1510 && pos.y == 520) {
      vel.x = 0;
      fire();
       if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_25 && pos.x >= 1520 && pos.x <= 1680 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_26 && pos.x >= 1520 && pos.x <= 1680 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_27 && pos.x >= 1520 && pos.x <= 1680 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_28 && pos.x >= 1690 && pos.x <= 1850 && pos.y == 200) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_29 && pos.x >= 1690 && pos.x <= 1850 && pos.y == 360) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else if (build1_30 && pos.x >= 1690 && pos.x <= 1850 && pos.y == 520) {
      vel.x = 0;
      fire();
      if (stateFe == 0) {
        stateFe = 1;
      } else if (stateTe == 0) {
        stateTe = 1;
      } else if (stateUe == 0) {
        stateUe = 1;
      }
    } else {
      vel.x = pVelocityX;
      if (stateFe == 1) {
        stateFe = 0;
      } else if (stateTe == 1) {
        stateTe = 0;
      } else if (stateUe == 1) {
        stateUe = 0;
      }
    }
  }
}