// This is the Map class which contains a constructor for loading image and a display method to 
// display the background and texts needed
// Zheyuan Ruan(Leo)
// Last update: 3/14/2017

class Map {
  PImage bkImage;
  PImage t1, t2, t3, t4, t5, t6; // tower variables

  Map() {
    bkImage = loadImage("gameMap.jpg");
    t1 = loadImage("BasicTower.png");
    t2 = loadImage("MagicAttack.png");
    t3 = loadImage("DestroyAttack.png");
    t4 = loadImage("FastAttack.png");
    t5 = loadImage("BasicDefense.png");
    t6 = loadImage("upgradeDefense.png");
  }

  void display() {
    image(bkImage, 0, 0);
    textFont(inGameText, 30);
    fill(0);
    text("Day " + states, 100, 50);
    textSize(20);
    text("Gold: ", 10, 660);
    textSize(45);
    text(gold, 40, 740);

    strokeWeight(10);
    stroke(0);

    for (int i = 220; i <= 1720; i += 250) { 
      line(i, 620, i, 800);
    }

    pushMatrix();
    translate(340, 700);
    scale(0.28);
    image(t1, -t1.width/2, -t1.height/2);
    popMatrix();

    pushMatrix();
    translate(590, 700);
    scale(0.28);
    image(t2, -t2.width/2, -t2.height/2);
    popMatrix();

    pushMatrix();
    translate(840, 700);
    scale(0.28);
    image(t3, -t3.width/2, -t3.height/2);
    popMatrix();

    pushMatrix();
    translate(1090, 700);
    scale(0.28);
    image(t4, -t4.width/2, -t4.height/2);
    popMatrix();

    pushMatrix();
    translate(1340, 700);
    scale(0.28);
    image(t5, -t5.width/2, -t5.height/2);
    popMatrix();

    pushMatrix();
    translate(1590, 700);
    scale(0.28);
    image(t6, -t6.width/2, -t6.height/2);
    popMatrix();

    if (mouseY >= 620 && mouseY <= 800) { 
      if (mouseX > 220 && mouseX <= 470) { // Basic tower information
        fill(0, 150);
        noStroke();
        rect(250, 450, 200, 150);
        fill(255);
        textFont(text2, 15);
        text("Basic Attact Tower", 280, 480);
        text("Cost: " + BACOST, 260, 510);
        text("Attack Speed: " + BAATT + "frames/att", 260, 540);
        text("HP: " + baHp, 260, 570);
      }
      if (mouseX > 470 && mouseX <= 720) { // Magic tower information
        fill(0, 150);
        noStroke();
        rect(500, 450, 200, 150);
        fill(255);
        textFont(text2, 15);
        text("Magic Attact Tower", 530, 480);
        text("Cost: " + MACOST, 510, 510);
        text("Attack Speed: " + MAATT + "frames/att", 510, 540);
        text("HP: " + maHp, 510, 570);
      }
      if (mouseX > 720 && mouseX <= 970) { // Destroy tower information
        fill(0, 150);
        noStroke();
        rect(750, 450, 200, 150);
        fill(255);
        textFont(text2, 15);
        text("Destroy Attact Tower", 780, 480);
        text("Cost: " + DACOST, 760, 510);
        text("Attack Speed: " + DAATT + "frames/att", 760, 540);
        text("HP: " + daHp, 760, 570);
      }
      if (mouseX > 980 && mouseX <= 1140) { // Fast tower information
        fill(0, 150);
        noStroke();
        rect(1010, 450, 200, 150);
        fill(255);
        textFont(text2, 15);
        text("Fast Attact Tower", 1040, 480);
        text("Cost: " + FACOST, 1020, 510);
        text("Attack Speed: " + FAATT + "frames/att", 1020, 540);
        text("HP: " + faHp, 1020, 570);
      }
      if (mouseX > 1150 && mouseX <= 1400) { // Basic defense information
        fill(0, 150);
        noStroke();
        rect(1180, 450, 200, 150);
        fill(255);
        textFont(text2, 15);
        text("Basic Defense Tower", 1210, 480);
        text("Cost: " + BDCOST, 1190, 520);
        text("HP: " + bdHp, 1190, 560);
      }
      if (mouseX > 1410 && mouseX < 1660) { // upgrade defense information
        fill(0, 150);
        noStroke();
        rect(1440, 450, 200, 150);
        fill(255);
        textFont(text2, 15);
        text("Upgrade Defense Tower", 1470, 480);
        text("Cost: " + UDCOST, 1450, 520);
        text("HP: " + udHp, 1450, 560);
      }
      if (mouseX > 0 && mouseX < 210) { // Gold
        fill(0, 150);
        noStroke();
        rect(10, 450, 200, 150);
        fill(255);
        textFont(text2, 15);
        text("Gold booster: ", 20, 480);
        if (abilityFrames > 0) {
          text("Next use: " + abilityFrames/60 + " (s)", 30, 510);
        }
        else
        {
          text("Next use: Ready", 30, 510);
        }
      }
    }
  }
}