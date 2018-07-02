//public void gameDayFour() {
//  toggleEnd -= dToggleEnd;
//  if (toggleEnd == 0) {
//    dToggleEnd = 0;
//  }

//  maps.display();
//  goldGenerator();
//  respawnDayFour();
//  gameFrames++;

//  // Basic Attack 
//  for (int i = 0; i < ba.size(); i++) {
//    BasicAttack currBa = ba.get(i);
//    currBa.update();
//  }

//  // Magic Attack
//  for (int i = 0; i < ma.size(); i++) {
//    MagicAttack currMa = ma.get(i);
//    currMa.update();
//  }

//  // Destroy Attack
//  for (int i = 0; i < da.size(); i++) {
//    DestroyAttack currDa = da.get(i);
//    currDa.update();
//  }

//  // Fast Attack
//  for (int i = 0; i < fa.size(); i++) {
//    FastAttack currFa = fa.get(i);
//    currFa.update();
//  }

//  // Basic Defense
//  for (int i = 0; i < bd.size(); i++) {
//    BasicDefense currBd = bd.get(i);
//    currBd.update();
//  }

//  // Upgrade Defense
//  for (int i = 0; i < ud.size(); i++) {
//    UpgradeDefense currUd = ud.get(i);
//    currUd.update();
//  }

//  // Basic enemy
//  for (int j = 0; j < be4.size(); j++) {
//    BasicEnemy currBe = be4.get(j);
//    currBe.update();
//  }

//  // Fast enemy
//  for (int j = 0; j < fe4.size(); j++) {
//    FastEnemy currFe = fe4.get(j);
//    currFe.update();
//  }

//  // Tank Enemy
//  for (int j = 0; j < te3.size(); j++) {
//    TankEnemy currTe = te3.get(j);
//    currTe.update();
//  }
//  // Update Eenmy
//  for (int j = 0; j < ue2.size(); j++) {
//    UpdateEnemy currUe = ue2.get(j);
//    currUe.update();
//  }



//  if (tower1 || tower2 || tower3 || tower4 || tower5 || tower6) {
//    cursor(HAND);
//  }
//  if (!tower1 && !tower2 && !tower3 && !tower4 && !tower5 && !tower6) {
//    cursor(ARROW);
//  }

//  if (be3.size() <= 0 && fe3.size() <= 0 && te2.size() <= 0 && ue2.size() <= 0 && gameFrames > 550 && enemyLoopBe == enemyCounts1DayThree && enemyLoopFe == enemyCounts2DayThree && enemyLoopTe == enemyCounts3DayThree && enemyLoopUe == enemyCounts4DayThree) {
//    toggleEnd++;
//    if (toggleEnd == 255) {
//      build1_1 = false;
//      build1_2 = false;
//      build1_3 = false;
//      build1_4 = false;
//      build1_5 = false;
//      build1_6 = false;
//      build1_7 = false;
//      build1_8 = false;
//      build1_9 = false;
//      build1_10 = false;
//      build1_11 = false;
//      build1_12 = false;
//      build1_13 = false;
//      build1_14 = false;
//      build1_15 = false;
//      build1_16 = false;
//      build1_17 = false;
//      build1_18 = false;
//      build1_19 = false;
//      build1_20 = false;
//      build1_21 = false;
//      build1_22 = false;
//      build1_23 = false;
//      build1_24 = false;
//      build1_25 = false;
//      build1_26 = false;
//      build1_27 = false;
//      build1_28 = false;
//      build1_29 = false;
//      build1_30 = false;

//      ba = new ArrayList<BasicAttack>();
//      ma = new ArrayList<MagicAttack>();
//      da = new ArrayList<DestroyAttack>();
//      fa = new ArrayList<FastAttack>();
//      bd = new ArrayList<BasicDefense>();
//      ud = new ArrayList<UpgradeDefense>();

//      enemyLoopBe = 0;
//      enemyLoopFe = 0;
//      enemyLoopTe = 0;

//      tower1 = false;
//      tower2 = false;
//      tower3 = false;
//      tower4 = false;
//      tower5 = false;
//      dToggleEnd = -1;
//      states = 6;
//    }
//  }
//  fill(0, toggleEnd);
//  rect(0, 0, width, height);
//}

//public void respawnDayFour() { //60 Basic  20 fast  12 tank 6 update
//  dayFourStartingBe++;
//  dayFourStartingFe++;
//  dayFourStartingTe++;
//  dayFourStartingUe++;

//  // respawning basic enemy
//  if ((dayFourStartingBe%480 == 0 || (dayFourStartingBe >= 1000 && be4.size() == 0)) && enemyLoopBe < enemyCounts1DayFour) {
//    if (posGeneratorBe4[enemyLoopBe] == 1) {
//      posXBe4 = 2000;
//      posYBe4 = 520;
//    }
//    if (posGeneratorBe4[enemyLoopBe] == 2) {
//      posXBe4 = 2000;
//      posYBe4 = 360;
//    }
//    if (posGeneratorBe4[enemyLoopBe] == 3) {
//      posXBe4 = 2000;
//      posYBe4 = 200;
//    }
//    be4.add(new BasicEnemy (new PVector(posXBe4, posYBe4), new PVector(-3, 0), new PVector(0, 0), beHp, 2, 1, new PVector(50, 50), BEDMG));
//    enemyLoopBe += 1;
//  }

//  // respawning fast enemy
//  if ((dayFourStartingFe%600 == 0 || (dayFourStartingFe >= 3000 && fe4.size() == 0)) && enemyLoopFe < enemyCounts2DayFour) {
//    if (posGeneratorFe4[enemyLoopFe] == 1) {
//      posXFe4 = 2000;
//      posYFe4 = 520;
//    }
//    if (posGeneratorFe4[enemyLoopFe] == 2) {
//      posXFe4 = 2000;
//      posYFe4 = 360;
//    }
//    if (posGeneratorFe4[enemyLoopFe] == 3) {
//      posXFe4 = 2000;
//      posYFe4 = 200;
//    }
//    fe4.add(new FastEnemy (new PVector(posXFe4, posYFe4), new PVector(-7, 0), new PVector(0, 0), feHp, 1, 1, new PVector(50, 50), FEDMG));
//    enemyLoopFe += 1;
//  }

//  // respawning tank enemy
//  if ((dayFourStartingTe == 600 && enemyLoopTe < enemyCounts3DayFour)) {
//    if (posGeneratorTe4[enemyLoopTe] == 1) {
//      posXTe4 = 2000;
//      posYTe4= 520;
//    }
//    if (posGeneratorTe4[enemyLoopTe] == 2) {
//      posXTe4 = 2000;
//      posYTe4 = 360;
//    }
//    if (posGeneratorTe4[enemyLoopTe] == 3) {
//      posXTe4 = 2000;
//      posYTe4 = 200;
//    }
//    te3.add(new TankEnemy (new PVector(posXTe4, posYTe4), new PVector(-1, 0), new PVector(0, 0), teHp, 1, 1, new PVector(50, 50), TEDMG));
//    dayFourStartingTe = 0;
//    enemyLoopTe += 1;
//  }

//  // respawning update enemy
//  if ((dayFourStartingUe == 1200 && enemyLoopUe < enemyCounts4DayFour)) {
//    if (posGeneratorUe2[enemyLoopUe] == 1) {
//      posXUe4 = 2000;
//      posYUe4 = 520;
//    }
//    if (posGeneratorUe2[enemyLoopUe] == 2) {
//      posXUe4 = 2000;
//      posYUe4 = 360;
//    }
//    if (posGeneratorUe2[enemyLoopUe] == 3) {
//      posXUe4 = 2000;
//      posYUe4 = 200;
//    }
//    ue2.add(new UpdateEnemy (new PVector(posXUe4, posYUe4), new PVector(-5, 0), new PVector(0, 0), ueHp, 1, 1, new PVector(50, 50), UEDMG));
//    dayFourStartingUe = 0;
//    enemyLoopUe += 1;
//  }
//}