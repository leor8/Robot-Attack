 //This is the level one stage of the game, only the most basic robots will be encountered
 //Zheyuan Ruan (Leo)
 //Last update: 3/14/2017

void gameDayOne() {
  maps.display();
  goldGenerator();
  respawnDayOne();
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
  for (int i = 0; i < ud.size(); i++){
    UpgradeDefense currUd = ud.get(i);
    currUd.update();
  }

  // Basic enemy
  for (int j = 0; j < be.size(); j++) {
    BasicEnemy currBe = be.get(j);
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
  for (int j = 0; j < fe.size(); j++) {
    FastEnemy currFe = fe.get(j);
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



  if (tower1 || tower2 || tower3 || tower4 || tower5 || tower6) {
    cursor(HAND);
  }
  if (!tower1 && !tower2 && !tower3 && !tower4 && !tower5 && !tower6) {
    cursor(ARROW);
  }


  if (be.size() <= 0 && fe.size() <= 0 && gameFrames > 550 && enemyLoopBe <= enemyCounts1 && enemyLoopFe <= enemyCounts2) {
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

      tower1 = false;
      tower2 = false;
      tower3 = false;
      tower4 = false;
      tower5 = false;
      gold = 30;
      gameFrames = 0;
      abilityFrames = 3600;
      states = 2;
    }
  }
  fill(0, toggleEnd);
  rect(0, 0, width, height);

  //fill(0);
  //rect(470, 620, 250, 250);
}

public void respawnDayOne() {
  dayOneStartingBe++;
  dayOneStartingFe++;

  // respawning basic enemy
  if ((dayOneStartingBe%480 == 0 || (dayOneStartingBe >= 500 && be.size() == 0)) && enemyLoopBe < enemyCounts1) {
    if (posGeneratorBe[enemyLoopBe] == 1) {
      posXBe = 2000;
      posYBe = 520;
    }
    if (posGeneratorBe[enemyLoopBe] == 2) {
      posXBe = 2000;
      posYBe = 360;
    }
    if (posGeneratorBe[enemyLoopBe] == 3) {
      posXBe = 2000;
      posYBe = 200;
    }
    be.add(new BasicEnemy (new PVector(posXBe, posYBe), new PVector(-3, 0), new PVector(0, 0), beHp, 2, 1, new PVector(50, 50), BEDMG));
    enemyLoopBe += 1;
  }

  // respawning fast enemy
  if ((dayOneStartingFe == 1000 && enemyLoopFe < enemyCounts2)) {
    if (posGeneratorFe[enemyLoopFe] == 1) {
      posXFe = 2000;
      posYFe = 520;
    }
    if (posGeneratorFe[enemyLoopFe] == 2) {
      posXFe = 2000;
      posYFe = 360;
    }
    if (posGeneratorFe[enemyLoopFe] == 3) {
      posXFe = 2000;
      posYFe = 200;
    }
    fe.add(new FastEnemy (new PVector(posXFe, posYFe), new PVector(-5, 0), new PVector(0, 0), feHp, 1, 1, new PVector(50, 50), FEDMG));
    dayOneStartingFe = 0;
    enemyLoopFe += 1;
  }
}