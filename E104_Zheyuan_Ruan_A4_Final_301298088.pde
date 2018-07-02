// This is a tower defense game where players can build towers to defense robots invasion
// Author: Zheyuan Ruan (Leo)
// Project starting date: 3/13/2017
// Last update: 3/13/2017

public void setup() {
  size(2000, 800);

  introbkImage = loadImage("gameMap.jpg");
  scientist = loadImage("scientist1.png");
  scientist2 = loadImage("scientist2.png");
  scientist3 = loadImage("scientist3.png");
  inGameText = loadFont("imgame.vlw");
  text1 = loadFont("text1.vlw");
  text2 = loadFont("text2.vlw");
  button = loadFont("button.vlw");
  bgSong = minim.loadFile("background.mp3");
  hit = minim.loadFile("bulletTower.mp3");
  bgSong.loop();
  maps = new Map();


  // Randomly Generating enemy's location (basicEnemy day 1)
  for (int i = 0; i < enemyCounts1; i++) {
    posGeneratorBe[i] = (int)random(1, 4);
  }
  // Randomly Generating enemy's location (fastEnemy day 1)
  for (int i = 0; i < enemyCounts2; i++) {
    posGeneratorFe[i] = (int)random(1, 4);
  }
  // Randomly Generating enemy's location (basicEnemy day 2)
  for (int i = 0; i < enemyCounts1DayTwo; i++) {
    posGeneratorBe2[i] = (int)random(1, 4);
  }
  // Randomly Generating enemy's location (fastEnemy day 2)
  for (int i = 0; i < enemyCounts2DayTwo; i++) {
    posGeneratorFe2[i] = (int)random(1, 4);
  }
  // Randomly Generating enemy's location (tankenemy day 2)
  for (int i = 0; i < enemyCounts3DayTwo; i++) {
    posGeneratorTe[i] = (int)random(1, 4);
  }
  // Randomly Generating enemy's location (basicEnemy day 3)
  for (int i = 0; i < enemyCounts1DayThree; i++) {
    posGeneratorBe3[i] = (int)random(1, 4);
  }
  // Randomly Generating enemy's location (fastEnemy day 3)
  for (int i = 0; i < enemyCounts2DayThree; i++) {
    posGeneratorFe3[i] = (int)random(1, 4);
  }
  // Randomly Generating enemy's location (tankenemy day 3)
  for (int i = 0; i < enemyCounts3DayThree; i++) {
    posGeneratorTe3[i] = (int)random(1, 4);
  }
  // Randomly Generating enemy's location (updateenemy day 3)
  for (int i = 0; i < enemyCounts4DayThree; i++) {
    posGeneratorUe[i] = (int)random(1, 4);
  }

  for (int i = 0; i < walkingBe.length; i++) {
    walkingBe[i] = loadImage("basic" + i + ".png");
  }
  attackingBe[0] = loadImage("basicAttack.png");

  for (int i = 0; i < walkingFe.length; i++) {
    walkingFe[i] = loadImage("fast" + i + ".png");
  }
  attackingFe[0] = loadImage("fastAtt.png");

  for (int i = 0; i < walkingTe.length; i++) {
    walkingTe[i] = loadImage("tank" + i + ".png");
  }
  attackingTe[0] = loadImage("tankAtt.png");

  for (int i = 0; i < walkingUe.length; i++) {
    walkingUe[i] = loadImage("update" + i + ".png");
  }
  attackingUe[0] = loadImage("updateAtt.png");
}

public void draw() {
  switch(states) {
  case 0: 
    intro(); // Stories
    break;
  case 1: 
    gameDayOne(); 
    break;
  case 2: 
    gameDayTwo(); 
    break;
  case 3: 
    gameDayThree();
    break;
  case 4:
    gameIntro(); // Game intro and start; 
    break;
  case 5:
    win();
    break;
  case 6:
    lose();
    break;
  }
  //lose();
}

public void goldGenerator() {
  // This function automatically generate golds at the rate of 1g/s
  // Zheyuan Ruan(Leo)
  // Last update: 3/14/2017

  framesGold++;
  if (framesGold == 120) {
    gold++;
    framesGold = 0;
  }

  abilityFrames--;

  if (abilityFrames <= 0 && use == false) {
    if (mousePressed && mouseX > 0 && mouseX < 210 && mouseY >= 620 && mouseY <= 800 && !use) {
      use = true; 
      gold += 50;
      abilityFrames = 3600;
    }
  }
  if (abilityFrames > 0 && use == true) {
    use = false;
  }
}

public void lose() {
  background(0);
  noStroke();
  fill(255);
  textSize(50);
  text("LOSE", width/2 - 200, height/2 - 150);
  textSize(30);
  text("Press any key to restart the game", width/2 - 420, height/2 + 100);

  
  println(states);
  if(keyPressed){
      states = 0;
  }
}

public void win() {
  background(255);
  textSize(50);
  fill(0);
  text("WIN", width/2, height/2);
}