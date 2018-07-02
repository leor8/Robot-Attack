public void gameDayThree() {
  toggleEnd -= dToggleEnd;
  if (toggleEnd == 0) {
    dToggleEnd = 0;
  }

  maps.display();
  goldGenerator();
  respawnDayThree();
  gameFrames++;

  // Basic Attack 
  for (int i = 0; i < ba.size(); i++) {
    BasicAttack currBa = ba.get(i);
    currBa.update();
  }

  // Magic Attack
  for (int i = 0; i < ma.size(); i++) {
    MagicAttack currMa = ma.get(i);
    currMa.update();
  }

  // Destroy Attack
  for (int i = 0; i < da.size(); i++) {
    DestroyAttack currDa = da.get(i);
    currDa.update();
  }

  // Fast Attack
  for (int i = 0; i < fa.size(); i++) {
    FastAttack currFa = fa.get(i);
    currFa.update();
  }

  // Basic Defense
  for (int i = 0; i < bd.size(); i++) {
    BasicDefense currBd = bd.get(i);
    currBd.update();
  }

  // Upgrade Defense
  for (int i = 0; i < ud.size(); i++) {
    UpgradeDefense currUd = ud.get(i);
    currUd.update();
  }

  // Basic enemy
  for (int j = 0; j < be3.size(); j++) {
    BasicEnemy currBe = be3.get(j);
    currBe.update();
    if (currBe.pos.y == 520) {
      bottom = true;
    }
    if (currBe.pos.y == 360) {
      middle = true;
    }
    if (currBe.pos.y == 200) {
      top = true;
    }
  }

  // Fast enemy
  for (int j = 0; j < fe3.size(); j++) {
    FastEnemy currFe = fe3.get(j);
    currFe.update();
    if (currFe.pos.y == 520) {
      bottom = true;
    }
    if (currFe.pos.y == 360) {
      middle = true;
    }
    if (currFe.pos.y == 200) {
      top = true;
    }
  }

  // Tank Enemy
  for (int j = 0; j < te2.size(); j++) {
    TankEnemy currTe = te2.get(j);
    currTe.update();
    if (currTe.pos.y == 520) {
      bottom = true;
    }
    if (currTe.pos.y == 360) {
      middle = true;
    }
    if (currTe.pos.y == 200) {
      top = true;
    }
  }
  // Update Eenmy
  for (int j = 0; j < ue.size(); j++) {
    UpdateEnemy currUe = ue.get(j);
    currUe.update();
    if (currUe.pos.y == 520) {
      bottom = true;
    }
    if (currUe.pos.y == 360) {
      middle = true;
    }
    if (currUe.pos.y == 200) {
      top = true;
    }
  }



  if (tower1 || tower2 || tower3 || tower4 || tower5 || tower6) {
    cursor(HAND);
  }
  if (!tower1 && !tower2 && !tower3 && !tower4 && !tower5 && !tower6) {
    cursor(ARROW);
  }

  if (be3.size() <= 0 && fe3.size() <= 0 && te2.size() <= 0 && ue2.size() <= 0 && gameFrames > 550 && enemyLoopBe == enemyCounts1DayThree && enemyLoopFe == enemyCounts2DayThree && enemyLoopTe == enemyCounts3DayThree && enemyLoopUe == enemyCounts4DayThree) {
    toggleEnd++;
    if (toggleEnd == 255) {
      build1_1 = false;
      build1_2 = false;
      build1_3 = false;
      build1_4 = false;
      build1_5 = false;
      build1_6 = false;
      build1_7 = false;
      build1_8 = false;
      build1_9 = false;
      build1_10 = false;
      build1_11 = false;
      build1_12 = false;
      build1_13 = false;
      build1_14 = false;
      build1_15 = false;
      build1_16 = false;
      build1_17 = false;
      build1_18 = false;
      build1_19 = false;
      build1_20 = false;
      build1_21 = false;
      build1_22 = false;
      build1_23 = false;
      build1_24 = false;
      build1_25 = false;
      build1_26 = false;
      build1_27 = false;
      build1_28 = false;
      build1_29 = false;
      build1_30 = false;

      ba = new ArrayList<BasicAttack>();
      ma = new ArrayList<MagicAttack>();
      da = new ArrayList<DestroyAttack>();
      fa = new ArrayList<FastAttack>();
      bd = new ArrayList<BasicDefense>();
      ud = new ArrayList<UpgradeDefense>();

      enemyLoopBe = 0;
      enemyLoopFe = 0;
      enemyLoopTe = 0;

      tower1 = false;
      tower2 = false;
      tower3 = false;
      tower4 = false;
      tower5 = false;
      gold = 35;
      abilityFrames = 3600;
      dToggleEnd = -1;
      states = 5;
    }
  }
  fill(0, toggleEnd);
  rect(0, 0, width, height);
}

public void respawnDayThree() { //40 Basic  15 fast  8 tank 3 update
  dayThreeStartingBe++;
  dayThreeStartingFe++;
  dayThreeStartingTe++;
  dayThreeStartingUe++;

  // respawning basic enemy
  if ((dayThreeStartingBe%480 == 0 || (dayThreeStartingBe >= 1000 && be3.size() == 0)) && enemyLoopBe < enemyCounts1DayThree) {
    if (posGeneratorBe3[enemyLoopBe] == 1) {
      posXBe3 = 2000;
      posYBe3 = 520;
    }
    if (posGeneratorBe3[enemyLoopBe] == 2) {
      posXBe3 = 2000;
      posYBe3 = 360;
    }
    if (posGeneratorBe3[enemyLoopBe] == 3) {
      posXBe3 = 2000;
      posYBe3 = 200;
    }
    be3.add(new BasicEnemy (new PVector(posXBe3, posYBe3), new PVector(-3, 0), new PVector(0, 0), beHp, 2, 1, new PVector(50, 50), BEDMG));
    enemyLoopBe += 1;
  }

  // respawning fast enemy
  if ((dayThreeStartingFe%600 == 0 || (dayThreeStartingFe >= 3000 && fe3.size() == 0)) && enemyLoopFe < enemyCounts2DayThree) {
    if (posGeneratorFe3[enemyLoopFe] == 1) {
      posXFe3 = 2000;
      posYFe3 = 520;
    }
    if (posGeneratorFe3[enemyLoopFe] == 2) {
      posXFe3 = 2000;
      posYFe3 = 360;
    }
    if (posGeneratorFe3[enemyLoopFe] == 3) {
      posXFe3 = 2000;
      posYFe3 = 200;
    }
    fe3.add(new FastEnemy (new PVector(posXFe3, posYFe3), new PVector(-7, 0), new PVector(0, 0), feHp, 1, 1, new PVector(50, 50), FEDMG));
    enemyLoopFe += 1;
  }

  // respawning tank enemy
  if ((dayThreeStartingTe == 600 && enemyLoopTe < enemyCounts3DayThree)) {
    if (posGeneratorTe3[enemyLoopTe] == 1) {
      posXTe3 = 2000;
      posYTe3= 520;
    }
    if (posGeneratorTe3[enemyLoopTe] == 2) {
      posXTe3 = 2000;
      posYTe3 = 360;
    }
    if (posGeneratorTe3[enemyLoopTe] == 3) {
      posXTe3 = 2000;
      posYTe3 = 200;
    }
    te2.add(new TankEnemy (new PVector(posXTe3, posYTe3), new PVector(-1, 0), new PVector(0, 0), teHp, 1, 1, new PVector(50, 50), TEDMG));
    dayThreeStartingTe = 0;
    enemyLoopTe += 1;
  }

  // respawning update enemy
  if ((dayThreeStartingUe == 1200 && enemyLoopUe < enemyCounts4DayThree)) {
    if (posGeneratorUe[enemyLoopUe] == 1) {
      posXUe = 2000;
      posYUe= 520;
    }
    if (posGeneratorUe[enemyLoopUe] == 2) {
      posXUe = 2000;
      posYUe = 360;
    }
    if (posGeneratorUe[enemyLoopUe] == 3) {
      posXUe = 2000;
      posYUe = 200;
    }
    ue.add(new UpdateEnemy (new PVector(posXUe, posYUe), new PVector(-5, 0), new PVector(0, 0), ueHp, 1, 1, new PVector(50, 50), UEDMG));
    dayThreeStartingUe = 0;
    enemyLoopUe += 1;
  }
}