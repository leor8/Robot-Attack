void gameDayTwo() {
  toggleEnd -= dToggleEnd;
  if (toggleEnd == 0) {
    dToggleEnd = 0;
  }

  maps.display();
  goldGenerator();
  respawnDayTwo();
  gameFrames++;
  noStroke();

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
  for (int j = 0; j < be2.size(); j++) {
    BasicEnemy currBe = be2.get(j);
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
  for (int j = 0; j < fe2.size(); j++) {
    FastEnemy currFe = fe2.get(j);
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
  for (int j = 0; j < te.size(); j++) {
    TankEnemy currTe = te.get(j);
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



  if (tower1 || tower2 || tower3 || tower4 || tower5 || tower6) {
    cursor(HAND);
  }
  if (!tower1 && !tower2 && !tower3 && !tower4 && !tower5 && !tower6) {
    cursor(ARROW);
  }

  if (be2.size() <= 0 && fe2.size() <= 0 && te.size() <= 0 && gameFrames > 550 && enemyLoopBe == enemyCounts1DayTwo && enemyLoopFe == enemyCounts2DayTwo && enemyLoopTe == enemyCounts3DayTwo) {
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
      dToggleEnd = 1;
      states = 3;
    }
  }
  fill(0, toggleEnd);
  rect(0, 0, width, height);
}

public void respawnDayTwo() { //20 Basic  10 fast  5 tank
  dayTwoStartingBe++;
  dayTwoStartingFe++;
  dayTwoStartingTe++;

  // respawning basic enemy
  if ((dayTwoStartingBe%480 == 0 || (dayTwoStartingBe >= 500 && be2.size() == 0)) && enemyLoopBe < enemyCounts1DayTwo) {
    if (posGeneratorBe2[enemyLoopBe] == 1) {
      posXBe2 = 2000;
      posYBe2 = 520;
    }
    if (posGeneratorBe2[enemyLoopBe] == 2) {
      posXBe2 = 2000;
      posYBe2 = 360;
    }
    if (posGeneratorBe2[enemyLoopBe] == 3) {
      posXBe2 = 2000;
      posYBe2 = 200;
    }
    be2.add(new BasicEnemy (new PVector(posXBe2, posYBe2), new PVector(-3, 0), new PVector(0, 0), beHp, 2, 1, new PVector(50, 50), BEDMG));
    enemyLoopBe += 1;
  }

  // respawning fast enemy
  if ((dayTwoStartingFe%600 == 0 || (dayTwoStartingFe >= 3000 && fe2.size() == 0)) && enemyLoopFe < enemyCounts2DayTwo) {
    if (posGeneratorFe2[enemyLoopFe] == 1) {
      posXFe2 = 2000;
      posYFe2 = 520;
    }
    if (posGeneratorFe2[enemyLoopFe] == 2) {
      posXFe2 = 2000;
      posYFe2 = 360;
    }
    if (posGeneratorFe2[enemyLoopFe] == 3) {
      posXFe2 = 2000;
      posYFe2 = 200;
    }
    fe2.add(new FastEnemy (new PVector(posXFe2, posYFe2), new PVector(-7, 0), new PVector(0, 0), feHp, 1, 1, new PVector(50, 50), FEDMG));
    enemyLoopFe += 1;
  }

  // respawning tank enemy
  if ((dayTwoStartingTe == 600 && enemyLoopTe < enemyCounts3DayTwo)) {
    if (posGeneratorTe[enemyLoopTe] == 1) {
      posXTe = 2000;
      posYTe = 520;
    }
    if (posGeneratorTe[enemyLoopTe] == 2) {
      posXTe = 2000;
      posYTe = 360;
    }
    if (posGeneratorTe[enemyLoopTe] == 3) {
      posXTe = 2000;
      posYTe = 200;
    }
    te.add(new TankEnemy (new PVector(posXTe, posYTe), new PVector(-1, 0), new PVector(0, 0), teHp, 1, 1, new PVector(50, 50), TEDMG));
    dayTwoStartingTe = 0;
    enemyLoopTe += 1;
  }
}