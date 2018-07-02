void mousePressed() {

  if (mouseY >= 620 && mouseY <= 800) {
    if (mouseX > 220 && mouseX <= 470) {
      tower1 = true;
      tower2 = false;
      tower3 = false;
      tower4 = false;
      tower5 = false;
      tower6 = false;
    }
    if (mouseX > 470 && mouseX <= 720) {
      tower2 = true;
      tower1 = false;
      tower3 = false;
      tower4 = false;
      tower5 = false;
      tower6 = false;
    }
    if (mouseX > 720 && mouseX <= 970) {
      tower3 = true;
      tower1 = false;
      tower2 = false;
      tower4 = false;
      tower5 = false;
      tower6 = false;
    }
    if (mouseX > 980 && mouseX <= 1140) {
      tower4 = true;
      tower1 = false;
      tower2 = false;
      tower3 = false;
      tower5 = false;
      tower6 = false;
    }
    if (mouseX > 1150 && mouseX <= 1400) {
      tower5 = true;
      tower1 = false;
      tower2 = false;
      tower3 = false;
      tower4 = false;
      tower6 = false;
    }
    if(mouseX > 1410 && mouseX < 1660){
      tower6 = true;
      tower1 = false;
      tower2 = false;
      tower3 = false;
      tower4 = false;
      tower5 = false;
    }
  }
}

void mouseReleased() {

  ////////////////// Start of Basic Towers///////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // Location 3
  if (mouseX >= 120 && mouseX <= 280) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_3) {
      if (tower1 && gold >= BACOST) { // basic tower location 3
        ba.add(new BasicAttack (new PVector (170, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_3 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 3
        ma.add(new MagicAttack (new PVector (170, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_3 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 3
        da.add(new DestroyAttack (new PVector (170, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_3 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 3
        fa.add(new FastAttack (new PVector (170, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_3 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 3
        bd.add(new BasicDefense (new PVector (170, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_3 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 3
        ud.add(new UpgradeDefense (new PVector (170, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_3 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 2
  if (mouseX >= 120 && mouseX <= 280) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_2) {
      if (tower1 && gold >= BACOST) { // basic tower location 2
        ba.add(new BasicAttack (new PVector (170, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_2 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 2
        ma.add(new MagicAttack (new PVector (170, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_2 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 2
        da.add(new DestroyAttack (new PVector (170, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_2 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 2
        fa.add(new FastAttack (new PVector (170, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_2 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 2
        bd.add(new BasicDefense (new PVector (170, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_2 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 2
        ud.add(new UpgradeDefense (new PVector (170, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_2 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 1
  if (mouseX >= 120 && mouseX <= 280) {
    if (mouseY >= 120 && mouseY <= 290 && !build1_1) {
      if (tower1 && gold >= BACOST) { // basic tower location 1
        ba.add(new BasicAttack (new PVector (170, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_1 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 1
        ma.add(new MagicAttack (new PVector (170, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_1 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 1
        da.add(new DestroyAttack (new PVector (170, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_1 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 1
        fa.add(new FastAttack (new PVector (170, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_1 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 1
        bd.add(new BasicDefense (new PVector (170, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_1 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 1
        ud.add(new UpgradeDefense (new PVector (170, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_1 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 4 
  if (mouseX >= 280 && mouseX <= 440) {
    if (mouseY >= 120 && mouseY <= 290  && !build1_4) {
      if (tower1 && gold >= BACOST) { // basic tower location 4
        ba.add(new BasicAttack (new PVector (330, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_4 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 4
        ma.add(new MagicAttack (new PVector (330, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_4 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 4
        da.add(new DestroyAttack (new PVector (330, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_4 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 4
        fa.add(new FastAttack (new PVector (330, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_4 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 4
        bd.add(new BasicDefense (new PVector (330, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_4 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 4
        ud.add(new UpgradeDefense (new PVector (330, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_4 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 5 
  if (mouseX >= 280 && mouseX <= 440) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_5) {
      if (tower1 && gold >= BACOST) { // basic tower location 5
        ba.add(new BasicAttack (new PVector (330, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_5 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 5
        ma.add(new MagicAttack (new PVector (330, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_5 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 5
        da.add(new DestroyAttack (new PVector (330, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_5 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 5
        fa.add(new FastAttack (new PVector (330, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_5 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 5
        bd.add(new BasicDefense (new PVector (330, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_5 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 5
        ud.add(new UpgradeDefense (new PVector (330, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_5 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 6
  if (mouseX >= 280 && mouseX <= 440) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_6) {
      if (tower1 && gold >= BACOST) { // basic tower location 6
        ba.add(new BasicAttack (new PVector (330, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_6 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 6
        ma.add(new MagicAttack (new PVector (330, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_6 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 6
        da.add(new DestroyAttack (new PVector (330, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_6 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 6
        fa.add(new FastAttack (new PVector (330, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_6 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 6
        bd.add(new BasicDefense (new PVector (330, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_6 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 6
        ud.add(new UpgradeDefense (new PVector (330, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_6 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 7
  if (mouseX >= 440 && mouseX <= 600) {
    if (mouseY >= 120 && mouseY <= 290 && !build1_7) {
      if (tower1 && gold >= BACOST) { // basic tower location 7
        ba.add(new BasicAttack (new PVector (490, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_7 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 7
        ma.add(new MagicAttack (new PVector (490, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_7 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 7
        da.add(new DestroyAttack (new PVector (490, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_7 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 7
        fa.add(new FastAttack (new PVector (490, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_7 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 7
        bd.add(new BasicDefense (new PVector (490, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_7 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 7
        ud.add(new UpgradeDefense (new PVector (490, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_7 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 8
  if (mouseX >= 440 && mouseX <= 600) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_8) {
      if (tower1 && gold >= BACOST) { // basic tower location 8
        ba.add(new BasicAttack (new PVector (490, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_8 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 8
        ma.add(new MagicAttack (new PVector (490, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_8 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 8
        da.add(new DestroyAttack (new PVector (490, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_8 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 8
        fa.add(new FastAttack (new PVector (490, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_8 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 8
        bd.add(new BasicDefense (new PVector (490, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_8 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 8
        ud.add(new UpgradeDefense (new PVector (490, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_8 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 9
  if (mouseX >= 440 && mouseX <= 600) { 
    if (mouseY >= 450 && mouseY <= 610 && !build1_9) {
      if (tower1 && gold >= BACOST) { // basic tower location 9
        ba.add(new BasicAttack (new PVector (490, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_9 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 9
        ma.add(new MagicAttack (new PVector (490, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_9 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 9
        da.add(new DestroyAttack (new PVector (490, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_9 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 9
        fa.add(new FastAttack (new PVector (490, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_9 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 9
        bd.add(new BasicDefense (new PVector (490, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_9 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 9
        ud.add(new UpgradeDefense (new PVector (490, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_9 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 10
  if (mouseX >= 600 && mouseX <= 760) {
    if (mouseY >= 120 && mouseY <= 290  && !build1_10) {
      if (tower1 && gold >= BACOST) { // basic tower location 10
        ba.add(new BasicAttack (new PVector (650, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_10 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 10
        ma.add(new MagicAttack (new PVector (650, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_10 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 10
        da.add(new DestroyAttack (new PVector (650, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_10 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 10
        fa.add(new FastAttack (new PVector (650, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_10 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 10
        bd.add(new BasicDefense (new PVector (650, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_10 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 10
        ud.add(new UpgradeDefense (new PVector (650, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_10 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 11
  if (mouseX >= 600 && mouseX <= 760) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_11) {
      if (tower1 && gold >= BACOST) { // basic tower location 11
        ba.add(new BasicAttack (new PVector (650, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_11 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 11
        ma.add(new MagicAttack (new PVector (650, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_11 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 11
        da.add(new DestroyAttack (new PVector (650, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_11 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 11
        fa.add(new FastAttack (new PVector (650, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_11 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 11
        bd.add(new BasicDefense (new PVector (650, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_11 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 11
        ud.add(new UpgradeDefense (new PVector (650, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_11 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 12
  if (mouseX >= 600 && mouseX <= 760) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_12) {
      if (tower1 && gold >= BACOST) { // basic tower location 12
        ba.add(new BasicAttack (new PVector (650, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_12 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 12
        ma.add(new MagicAttack (new PVector (650, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_12 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 12
        da.add(new DestroyAttack (new PVector (650, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_12 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 12
        fa.add(new FastAttack (new PVector (650, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_12 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 12
        bd.add(new BasicDefense (new PVector (650, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_12 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 12
        ud.add(new UpgradeDefense (new PVector (650, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_12 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 13
  if (mouseX >= 760 && mouseX <= 920) {
    if (mouseY >= 120 && mouseY <= 290 && !build1_13) {
      if (tower1 && gold >= BACOST) { // basic tower location 13
        ba.add(new BasicAttack (new PVector (810, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_13 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 13
        ma.add(new MagicAttack (new PVector (810, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_13 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 13
        da.add(new DestroyAttack (new PVector (810, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_13 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 13
        fa.add(new FastAttack (new PVector (810, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_13 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 13
        bd.add(new BasicDefense (new PVector (810, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_13 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 13
        ud.add(new UpgradeDefense (new PVector (810, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_13 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 14
  if (mouseX >= 760 && mouseX <= 920) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_14) {
      if (tower1 && gold >= BACOST) { // basic tower location 14
        ba.add(new BasicAttack (new PVector (810, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_14 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 14
        ma.add(new MagicAttack (new PVector (810, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_14 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 14
        da.add(new DestroyAttack (new PVector (810, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_14 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 14
        fa.add(new FastAttack (new PVector (810, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_14 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 14
        bd.add(new BasicDefense (new PVector (810, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_14 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 14
        ud.add(new UpgradeDefense (new PVector (810, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_14 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 15
  if (mouseX >= 760 && mouseX <= 920) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_15) {
      if (tower1 && gold >= BACOST) { // basic tower location 15
        ba.add(new BasicAttack (new PVector (810, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_15 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 15
        ma.add(new MagicAttack (new PVector (810, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_15 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 15
        da.add(new DestroyAttack (new PVector (810, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_15 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 15
        fa.add(new FastAttack (new PVector (810, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_15 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 15
        bd.add(new BasicDefense (new PVector (810, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_15 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 15
        ud.add(new UpgradeDefense (new PVector (810, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_15 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 16
  if (mouseX >= 920 && mouseX <= 1080) {
    if (mouseY >= 120 && mouseY <= 290 && !build1_16) {
      if (tower1 && gold >= BACOST) { // basic tower location 16
        ba.add(new BasicAttack (new PVector (970, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_16 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 16
        ma.add(new MagicAttack (new PVector (970, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_16 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 16
        da.add(new DestroyAttack (new PVector (970, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_16 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 16
        fa.add(new FastAttack (new PVector (970, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_16 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 16
        bd.add(new BasicDefense (new PVector (970, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_16 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 16
        ud.add(new UpgradeDefense (new PVector (970, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_16 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 17
  if (mouseX >= 920 && mouseX <= 1080) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_17) {
      if (tower1 && gold >= BACOST) { // basic tower location 17
        ba.add(new BasicAttack (new PVector (970, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_17 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 17
        ma.add(new MagicAttack (new PVector (970, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_17 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 17
        da.add(new DestroyAttack (new PVector (970, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_17 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 17
        fa.add(new FastAttack (new PVector (970, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_17 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 17
        bd.add(new BasicDefense (new PVector (970, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_17 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 17
        ud.add(new UpgradeDefense (new PVector (970, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_17 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 18
  if (mouseX >= 920 && mouseX <= 1080) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_18) {
      if (tower1 && gold >= BACOST) { // basic tower location 18
        ba.add(new BasicAttack (new PVector (970, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_18 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 18
        ma.add(new MagicAttack (new PVector (970, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_18 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 18
        da.add(new DestroyAttack (new PVector (970, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_18 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 18
        fa.add(new FastAttack (new PVector (970, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_18 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 18
        bd.add(new BasicDefense (new PVector (970, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_18 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 18
        ud.add(new UpgradeDefense (new PVector (970, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_18 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 19
  if (mouseX >= 1080 && mouseX <= 1240) {
    if (mouseY >= 120 && mouseY <= 290 && !build1_19) {
      if (tower1 && gold >= BACOST) { // basic tower location 19
        ba.add(new BasicAttack (new PVector (1130, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_19 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 19
        ma.add(new MagicAttack (new PVector (1130, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_19 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 19
        da.add(new DestroyAttack (new PVector (1130, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_19 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 19
        fa.add(new FastAttack (new PVector (1130, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_19 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 19
        bd.add(new BasicDefense (new PVector (1130, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_19 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 19
        ud.add(new UpgradeDefense (new PVector (1130, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_19 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 20
  if (mouseX >= 1080 && mouseX <= 1240) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_20) {
      if (tower1 && gold >= BACOST) { // basic tower location 20
        ba.add(new BasicAttack (new PVector (1130, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_20 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 20
        ma.add(new MagicAttack (new PVector (1130, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_20 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 20
        da.add(new DestroyAttack (new PVector (1130, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_20 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 20
        fa.add(new FastAttack (new PVector (1130, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_20 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 20
        bd.add(new BasicDefense (new PVector (1130, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_20 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 20
        ud.add(new UpgradeDefense (new PVector (1130, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_20 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 21
  if (mouseX >= 1080 && mouseX <= 1240) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_21) {
      if (tower1 && gold >= BACOST) { // basic tower location 21
        ba.add(new BasicAttack (new PVector (1130, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_21 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 21
        ma.add(new MagicAttack (new PVector (1130, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_21 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 21
        da.add(new DestroyAttack (new PVector (1130, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_21 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 21
        fa.add(new FastAttack (new PVector (1130, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_21 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 21
        bd.add(new BasicDefense (new PVector (1130, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_21 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 21
        ud.add(new UpgradeDefense (new PVector (1130, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_21 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 22
  if (mouseX >= 1240 && mouseX <= 1400) {
    if (mouseY >= 120 && mouseY <= 290 && !build1_22) {
      if (tower1 && gold >= BACOST) { // basic tower location 22
        ba.add(new BasicAttack (new PVector (1290, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_22 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 22
        ma.add(new MagicAttack (new PVector (1290, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_22 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 22
        da.add(new DestroyAttack (new PVector (1290, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_22 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 22
        fa.add(new FastAttack (new PVector (1290, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_22 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 22
        bd.add(new BasicDefense (new PVector (1290, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_22 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 22
        ud.add(new UpgradeDefense (new PVector (1290, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_22 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 23
  if (mouseX >= 1240 && mouseX <= 1400) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_23) {
      if (tower1 && gold >= BACOST) { // basic tower location 23
        ba.add(new BasicAttack (new PVector (1290, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_23 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 23
        ma.add(new MagicAttack (new PVector (1290, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_23 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 23
        da.add(new DestroyAttack (new PVector (1290, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_23 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 23
        fa.add(new FastAttack (new PVector (1290, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_23 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 23
        bd.add(new BasicDefense (new PVector (1290, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_23 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 23
        ud.add(new UpgradeDefense (new PVector (1290, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_23 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 24
  if (mouseX >= 1240 && mouseX <= 1400) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_24) {
      if (tower1 && gold >= BACOST) { // basic tower location 24
        ba.add(new BasicAttack (new PVector (1290, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_24 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 24
        ma.add(new MagicAttack (new PVector (1290, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_24 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 24
        da.add(new DestroyAttack (new PVector (1290, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_24 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 24
        fa.add(new FastAttack (new PVector (1290, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_24 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 24
        bd.add(new BasicDefense (new PVector (1290, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_24 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 24
        ud.add(new UpgradeDefense (new PVector (1290, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_24 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 25
  if (mouseX >= 1400 && mouseX <= 1560) {
    if (mouseY >= 120 && mouseY <= 290 && !build1_25) {
      if (tower1 && gold >= BACOST) { // basic tower location 25
        ba.add(new BasicAttack (new PVector (1450, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_25 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 25
        ma.add(new MagicAttack (new PVector (1450, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_25 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 25
        da.add(new DestroyAttack (new PVector (1450, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_25 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 25
        fa.add(new FastAttack (new PVector (1450, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_25 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 25
        bd.add(new BasicDefense (new PVector (1450, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_25 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 25
        ud.add(new UpgradeDefense (new PVector (1450, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_25 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 26
  if (mouseX >= 1400 && mouseX <= 1560) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_26) {
      if (tower1 && gold >= BACOST) { // basic tower location 26
        ba.add(new BasicAttack (new PVector (1450, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_26 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 26
        ma.add(new MagicAttack (new PVector (1450, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_26 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 26
        da.add(new DestroyAttack (new PVector (1450, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_26 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 26
        fa.add(new FastAttack (new PVector (1450, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_26 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 26
        bd.add(new BasicDefense (new PVector (1450, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_26 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 26
        ud.add(new UpgradeDefense (new PVector (1450, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_26 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 27
  if (mouseX >= 1400 && mouseX <= 1560) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_27) {
      if (tower1 && gold >= BACOST) { // basic tower location 27
        ba.add(new BasicAttack (new PVector (1450, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_27 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 27
        ma.add(new MagicAttack (new PVector (1450, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_27 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 27
        da.add(new DestroyAttack (new PVector (1450, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_27 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 27
        fa.add(new FastAttack (new PVector (1450, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_27 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 27
        bd.add(new BasicDefense (new PVector (1450, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_27 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 27
        ud.add(new UpgradeDefense (new PVector (1450, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_27 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 28
  if (mouseX >= 1560 && mouseX <= 1720) {
    if (mouseY >= 120 && mouseY <= 290 && !build1_28) {
      if (tower1 && gold >= BACOST) { // basic tower location 28
        ba.add(new BasicAttack (new PVector (1610, 190), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_28 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 28
        ma.add(new MagicAttack (new PVector (1610, 190), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_28 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 28
        da.add(new DestroyAttack (new PVector (1610, 190), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_28 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 28
        fa.add(new FastAttack (new PVector (1610, 190), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_28 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 28
        bd.add(new BasicDefense (new PVector (1610, 190), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_28 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 28
        ud.add(new UpgradeDefense (new PVector (1610, 190), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_28 = true;
        gold -= UDCOST;
      }
    }
  }

  // Location 29
  if (mouseX >= 1560 && mouseX <= 1720) {
    if (mouseY >= 290 && mouseY <= 450 && !build1_29) {
      if (tower1 && gold >= BACOST) { // basic tower location 29
        ba.add(new BasicAttack (new PVector (1610, 350), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_29 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 29
        ma.add(new MagicAttack (new PVector (1610, 350), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_29 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 29
        da.add(new DestroyAttack (new PVector (1610, 350), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_29 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 29
        fa.add(new FastAttack (new PVector (1610, 350), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_29 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 29
        bd.add(new BasicDefense (new PVector (1610, 350), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_29 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 29
        ud.add(new UpgradeDefense (new PVector (1610, 350), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_29 = true;
        gold -= UDCOST;
      }
    }
  }

  // BA30
  if (mouseX >= 1560 && mouseX <= 1720) {
    if (mouseY >= 450 && mouseY <= 610 && !build1_30) {
      if (tower1 && gold >= BACOST) { // basic tower location 30
        ba.add(new BasicAttack (new PVector (1610, 510), baHp, BADMG, BAATT, new PVector(), new PVector(50, 25)));
        tower1 = false;
        build1_30 = true;
        gold -= BACOST;
      }
      if (tower2 && gold >= MACOST) { // magic tower location 30
        ma.add(new MagicAttack (new PVector (1610, 510), maHp, MADMG, MAATT, new PVector(), new PVector(50, 25)));
        tower2 = false;
        build1_30 = true;
        gold -= MACOST;
      }
      if (tower3 && gold >= DACOST) { // Destroy tower location 30
        da.add(new DestroyAttack (new PVector (1610, 510), daHp, DADMG, DAATT, new PVector(), new PVector(50, 25)));
        tower3 = false;
        build1_30 = true;
        gold -= DACOST;
      }
      if (tower4 && gold >= FACOST) { // Fast tower location 30
        fa.add(new FastAttack (new PVector (1610, 510), faHp, FADMG, FAATT, new PVector(), new PVector(50, 25)));
        tower4 = false;
        build1_30 = true;
        gold -= FACOST;
      }
      if (tower5 && gold >= BDCOST) { // Basic Defense location 30
        bd.add(new BasicDefense (new PVector (1610, 510), bdHp, new PVector(50, 25)));
        tower5 = false;
        build1_30 = true;
        gold -= BDCOST;
      }
      if (tower6 && gold >= UDCOST) { // Upgrade Defense location 30
        ud.add(new UpgradeDefense (new PVector (1610, 510), udHp, new PVector(50, 25)));
        tower6 = false;
        build1_30 = true;
        gold -= UDCOST;
      }
    }
  }

  ////////////////////////////////////End of Towers////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////
}