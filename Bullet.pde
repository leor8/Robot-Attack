class Bullet {
  PVector pos, vel, dim;
  boolean alive;


  Bullet(PVector pos, PVector vel) {
    this.pos=pos;
    this.vel=vel;
    dim = new PVector(10, 10);
    alive=true;
  }

  void update() {
    move();
    checkWall();
    drawMe();
  }

  void checkWall() {
    if (abs(pos.x - width/2) > width/2) {
      alive=false;
    }
  }

  void drawMe() {
    fill(255, 0, 255);
    pushMatrix();
    translate(pos.x, pos.y);
    ellipse(0, 0, dim.x/100, dim.y/100);
    popMatrix();
  }

  void move() {
    pos.add(vel);
  }

  // if the towers bullet hits an enemy
  Boolean hitCharacter(Enemy e) {
    if (dist(pos.x, pos.y, e.pos.x, e.pos.y) < dim.x/2 + e.dim.x - 30) { //dim.x/2 + c.dim.x/2
      return true;
    }
    return false;
  }
  
  // if the enemy bullet hits a tower
  Boolean hitTower(Tower t){
    if (dist(pos.x, pos.y, t.pos.x, t.pos.y) < dim.x/2 + t.dim.x) { //dim.x/2 + c.dim.x/2
      return true;
    }
    return false;
  }

  // A hit methond decresing health and set flag alive to false(Basic enemy)
  void hitBasicEnemy(BasicEnemy enemy, double dmg) {
    hit.play();
    enemy.decreseHealth(dmg);
    alive = false;

    if (enemy.health <= 0) {
      enemy.killed();
      gold += 20;
    }
  }
  
  // A hit methond decresing health and set flag alive to false(Fast enemy)
  void hitFastEnemy(FastEnemy enemy, double dmg) {
    enemy.decreseHealth(dmg);
    alive = false;

    if (enemy.health <= 0) {
      enemy.killed();
      gold += 15;
    }
  }
  
  // A hit method decreasing health and set flag alive to false(Tank enemy)
  void hitTankEnemy(TankEnemy enemy, double dmg) {
    enemy.decreseHealth(dmg);
    alive = false;

    if (enemy.health <= 0) {
      enemy.killed();
      gold += 35;
    }
  }
  
  // A hit method decreasing health and set flag alive to false(Update enemy)
  void hitUpdateEnemy(UpdateEnemy enemy, double dmg) {
    enemy.decreseHealth(dmg);
    alive = false;

    if (enemy.health <= 0) {
      enemy.killed();
      gold += 30;
    }
  }
  
  // A hit methond decresing health and set flag alive to false(Basic tower)
  void hitBasicTower(BasicAttack ba, double dmg) {
    ba.decLife(dmg);
    alive = false;
    
    if (ba.health <= 0) {
      ba.killed();
    }
  }
  
  // A hit methond decresing health and set flag alive to false(Magic tower)
  void hitMagicTower(MagicAttack ma, double dmg) {
    ma.decLife(dmg);
    alive = false;
    
    if (ma.health <= 0) {
      ma.killed();
    }
  }
  
 // A hit methond decresing health and set flag alive to false(Destroy tower)
  void hitDestroyTower(DestroyAttack da, double dmg) {
    da.decLife(dmg);
    alive = false;
    
    if (da.health <= 0) {
      da.killed();
    }
  }
  
  // A hit methond decresing health and set flag alive to false(Fast tower)
  void hitFastTower(FastAttack fa, double dmg) {
    fa.decLife(dmg);
    alive = false;
    
    if (fa.health <= 0) {
      fa.killed();
    }
  }
  
  // A hit methond decresing health and set flag alive to false(Basic defense tower)
  void hitBasicDefenseTower(BasicDefense bd, double dmg) {
    bd.decLife(dmg);
    alive = false;
    
    if (bd.health <= 0) {
      bd.killed();
    }
  }
  
  // A hit methond decresing health and set flag alive to false(Basic defense tower)
  void hitUpgradeDefenseTower(UpgradeDefense ud, double dmg) {
    ud.decLife(dmg);
    alive = false;
    
    if (ud.health <= 0) {
      ud.killed();
    }
  }
}