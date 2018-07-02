// This is the offensive tower type, they fire bullets and do dmg to robots
// Zheyuan Ruan (Leo)
// Last update: 3/14/2017

class AttackTower extends Tower{
  int dmg;
  int attackSpeed;
  PVector vel;
  
  AttackTower(PVector pos, int health, int dmg, int attackSpeed, PVector vel, PVector dim){
    super(pos, health, dim);
    this.dmg = dmg;
    this.attackSpeed = attackSpeed;
    this.vel = vel;
  }
  
  void update() {
    super.update();
  }
}