// Here are all the variables that are going to be used
// Since there are lots of variables
// Importing minim
import ddf.minim.*;
Minim minim = new Minim(this);
AudioPlayer bgSong;
AudioPlayer hit;

// Fonts
PFont inGameText;
PFont text1;
PFont text2;
PFont button;

// Background 
Map maps;

// Images
PImage introbkImage;
PImage scientist;
PImage scientist2;
PImage scientist3;
PImage[] walkingBe = new PImage[7];
PImage[] attackingBe = new PImage[1];
PImage[] walkingFe = new PImage[7];
PImage[] attackingFe = new PImage[1];
PImage[] walkingTe = new PImage[7];
PImage[] attackingTe = new PImage[1];
PImage[] walkingUe = new PImage[7];
PImage[] attackingUe = new PImage[1];


// Game states: for switch
int states = 0;
int pStates = 0;

// Game Frames
int mouseframes = 0;
int mouseCheck = 0; // for intro dialog
int gameFrames = 0;
int endingFrames = 0; // Ending animation
int dayOneStartingBe = 0; // Starting to respawn enemy (basicenemy)
int dayOneStartingFe = 0; // Starting to respawn enemy (fastenemy)
int dayTwoStartingBe = 0; // Starting to respawn enemy (day two basicenemy)
int dayTwoStartingFe = 0; // Starting to respawn enemy (day two basicenemy)
int dayTwoStartingTe = 0; // Starting to respawn enemy (day two tankenemy)
int dayThreeStartingBe = 0; // Starting to respawn enemy (day three basicenemy)
int dayThreeStartingFe = 0; // Starting to respawn enemy (day three basicenemy)
int dayThreeStartingTe = 0; // Starting to respawn enemy (day three tankenemy)
int dayThreeStartingUe = 0; // Starting to respawn enemy (day three updateenemy);
int dayFourStartingBe = 0; // Starting to respawn enemy (day Four basicenemy)
int dayFourStartingFe = 0; // Starting to respawn enemy (day Four basicenemy)
int dayFourStartingTe = 0; // Starting to respawn enemy (day Four tankenemy)
int dayFourStartingUe = 0; // Starting to respawn enemy (day Four updateenemy);

// Loops for adding enemies
int enemyLoopBe = 0;
int enemyLoopFe = 0;
int enemyLoopTe = 0;
int enemyLoopUe = 0;

// Ending anamiation toggle
int toggleEnd = 0;
int dToggleEnd = 1;

// Game token: Gold
int gold = 100;
int abilityFrames = 3600; // every 60 secs can get 50 gold for free
boolean use = false; // if the ability is used

// Intro fill
int introFill = 255;

// Timers
int framesGold = 0;

// Enemy counts
int enemyCounts1 = 12; // day 1 12 Basic
int enemyCounts1DayTwo = 20; // day 2 20 Basic
int enemyCounts1DayThree = 40; // day 3 40 Basic
int enemyCounts1DayFour = 60; // day 4 60 basic
int enemyCounts2 = 3; // day1 3 Fast
int enemyCounts2DayTwo = 10; // day 2 10 fast
int enemyCounts2DayThree = 15; // day 3 15 fast
int enemyCounts2DayFour = 20; // day 4 20 fast
int enemyCounts3DayTwo = 5; // day 2 5 tank
int enemyCounts3DayThree = 8; // day 3 8 tank
int enemyCounts3DayFour = 12; // day 4 12 tank
int enemyCounts4DayThree = 3; // day 3 3 updateenemy
int enemyCounts4DayFour = 6; // day 4 6 update
int enemyCounts5DayFour = 1; // day 5 1 boss 
// BasicTower
ArrayList<BasicAttack> ba = new ArrayList<BasicAttack>();
int baHp = 5; // hit point basictower
final int BADMG = 3; // damage basictower
final int BAATT = 90; // attack speed basictower
final int BACOST = 20; // cost for basictower
// MagicTower
ArrayList<MagicAttack> ma = new ArrayList<MagicAttack>();
int maHp = 3; // hit point magictower
final int MADMG = 5; // damage magictower
final int MAATT = 120; // attack speed magictower
final int MACOST = 50; // cost for magictower
// DestroyTower
ArrayList<DestroyAttack> da = new ArrayList<DestroyAttack>();
int daHp = 1; // hit point destroytower
final int DADMG = 10;  // damage destroytower
final int DAATT = 150; // attack speed destroytower
final int DACOST = 100; // cost for destroytower
// FastTower
ArrayList<FastAttack> fa = new ArrayList<FastAttack>();
int faHp = 3; // hit point fasttower
final int FADMG = 1; // damage fasttower
final int FAATT = 60; // attack speed fasttower
final int FACOST = 15; // cost for fasttower
// BasicDefense
ArrayList<BasicDefense> bd = new ArrayList<BasicDefense>();
int bdHp = 20; // hit point basicdefense
final int BDCOST = 50; // cost for basicdefense
// UpgradeFefense
ArrayList<UpgradeDefense> ud = new ArrayList<UpgradeDefense>();
int udHp = 50; // hit point upgradedefense
final int UDCOST = 120; // cost for upgradedefense

// Towers
boolean tower1 = false; // Basic Attack
boolean tower2 = false; // Magic Attack
boolean tower3 = false; // Destroy Attack
boolean tower4 = false; // Fast Attack
boolean tower5 = false; // Basic Defense
boolean tower6 = false; // Upgrade Defense
boolean build1_1 = false; // (120, 120);
boolean build1_2 = false; // (120, 290);
boolean build1_3 = false; // (120, 450);
boolean build1_4 = false; // (280, 120);
boolean build1_5 = false; // (280, 290);
boolean build1_6 = false; // (280, 450);
boolean build1_7 = false; // (440, 120);
boolean build1_8 = false; // (440, 290);
boolean build1_9 = false; // (440, 450);
boolean build1_10 = false; // (600, 120);
boolean build1_11 = false; // (600, 290);
boolean build1_12 = false; // (600, 450);
boolean build1_13 = false; // (760, 120);
boolean build1_14 = false; // (760, 290);
boolean build1_15 = false; // (760, 450);
boolean build1_16 = false; // (920, 120);
boolean build1_17 = false; // (920, 290);
boolean build1_18 = false; // (920, 450);
boolean build1_19 = false; // (1080, 120);
boolean build1_20 = false; // (1080, 290);
boolean build1_21 = false; // (1080, 450);
boolean build1_22 = false; // (1240, 120);
boolean build1_23 = false; // (1240, 290);
boolean build1_24 = false; // (1240, 450);
boolean build1_25 = false; // (1400, 120);
boolean build1_26 = false; // (1400, 290);
boolean build1_27 = false; // (1400, 450);
boolean build1_28 = false; // (1560, 120);
boolean build1_29 = false; // (1560, 290);
boolean build1_30 = false; // (1560, 450);

// Enemies
boolean top = false; // checking locations of enemy
boolean middle = false; // checking loactions of enem2
boolean bottom = false; // checking locations of enemy3
// Basic Enemy
ArrayList<BasicEnemy> be = new ArrayList<BasicEnemy>(); // Day 1
ArrayList<BasicEnemy> be2 = new ArrayList<BasicEnemy>(); // Day 2
ArrayList<BasicEnemy> be3 = new ArrayList<BasicEnemy>(); // Day 3
ArrayList<BasicEnemy> be4 = new ArrayList<BasicEnemy>(); // Day 4
int beHp = 12; // 4 shots for basic tower
final int BEDMG = 2;
int[] posGeneratorBe = new int[enemyCounts1]; // Array holding position instances day 1
int[] posGeneratorBe2 = new int[enemyCounts1DayTwo]; // Array holding position instances day 2
int[] posGeneratorBe3 = new int[enemyCounts1DayThree]; // Array holding position instances day 3
int[] posGeneratorBe4 = new int[enemyCounts1DayFour]; // Array holding position instances day 4
int posXBe = 0, posYBe = 0; // Random locations of basic enemy
int posXBe2 = 0, posYBe2 = 0; // Random locations of basic enemy day2
int posXBe3 = 0, posYBe3 = 0; // Random locations of basic enemy day3
int posXBe4 = 0, posYBe4 = 0; // Random locations of basic enemy day4
int stateBe = 1; // image animation

// Fast Enemy
ArrayList<FastEnemy> fe = new ArrayList<FastEnemy>();
ArrayList<FastEnemy> fe2 = new ArrayList<FastEnemy>();
ArrayList<FastEnemy> fe3 = new ArrayList<FastEnemy>();
ArrayList<FastEnemy> fe4 = new ArrayList<FastEnemy>();
int feHp = 8; // 2 shots for basic tower
final int FEDMG = 1;
int[] posGeneratorFe = new int[enemyCounts2];
int[] posGeneratorFe2 = new int[enemyCounts2DayTwo];
int[] posGeneratorFe3 = new int[enemyCounts2DayThree];
int[] posGeneratorFe4 = new int[enemyCounts2DayFour];
int posXFe = 0, posYFe = 0; // Random locations of fast enemy
int posXFe2 = 0, posYFe2 = 0; // Random locations of fast enemy day 2
int posXFe3 = 0, posYFe3 = 0; // Random locations of fast enemy day 3
int posXFe4 = 0, posYFe4 = 0; // Random locations of fast enemy day 4
int stateFe = 0; // image Animation


// Tank enemy
ArrayList<TankEnemy> te = new ArrayList<TankEnemy>(); // Day 2
ArrayList<TankEnemy> te2 = new ArrayList<TankEnemy>(); // Day 3
ArrayList<TankEnemy> te3 = new ArrayList<TankEnemy>(); // Day 4 
int teHp = 30; // 10 shots for basic tower
final int TEDMG = 1;
int[] posGeneratorTe = new int[enemyCounts3DayTwo];
int[] posGeneratorTe3 = new int[enemyCounts3DayThree];
int[] posGeneratorTe4 = new int[enemyCounts3DayFour];
int posXTe = 0, posYTe = 0;
int posXTe3 = 0, posYTe3 = 0;
int posXTe4 = 0, posYTe4 = 0;
int stateTe = 0; // image Animation


// Update enemy
ArrayList<UpdateEnemy> ue = new ArrayList<UpdateEnemy>(); // day 3
ArrayList<UpdateEnemy> ue2 = new ArrayList<UpdateEnemy>(); // day 4
int ueHp = 20; 
final int UEDMG = 3;
int[] posGeneratorUe = new int[enemyCounts4DayThree];
int[] posGeneratorUe2 = new int[enemyCounts4DayFour];
int posXUe = 0, posYUe = 0, posXUe4 = 0, posYUe4 = 0;
int stateUe = 0; // image Animation 


// Boss (Only if time permits)
boolean bossAlive = false; // Flag if boss is alive