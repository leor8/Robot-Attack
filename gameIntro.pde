public void gameIntro() {
  maps.display();
  goldGenerator();

  textFont(text2, 20);
  fill(0, introFill);
  text("Click the icons below to hover your towers.", 300, 50);
  text("If robots", 5, 300);
  text("point you", 5, 340);
  text("passed this", 5, 320);
  text("lose the game", 5, 360);

  text("Towers can be", 130, 500);
  text("built here.", 130, 520);
  
  textFont(text2, 50);
  text("Pressed any key on your keyboard to start the game when ever youare ready!", 70, 230);
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
  for (int j = 0; j < be.size(); j++) {
    BasicEnemy currBe = be.get(j);
    currBe.update();
  }

  // Fast enemy
  for (int j = 0; j < fe.size(); j++) {
    FastEnemy currFe = fe.get(j);
    currFe.update();
  }



  if (tower1 || tower2 || tower3 || tower4 || tower5 || tower6) {
    cursor(HAND);
  }
  if (!tower1 && !tower2 && !tower3 && !tower4 && !tower5 && !tower6) {
    cursor(ARROW);
  }


  if (keyPressed) {
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


    tower1 = false;
    tower2 = false;
    tower3 = false;
    tower4 = false;
    tower5 = false;
    gold = 15;
    gameFrames = 0;
    introFill = 0;
    abilityFrames = 3600;
    states = 1;
  }
}