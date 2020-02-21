Enemy enemy;
ArrayList<Enemy> enemies = new ArrayList<Enemy>();
int enemySize = 1000;

void setup() {
  size(600,600);
  for (int i = 0; i < enemySize; i++) {
  enemies.add(new Enemy());
}
}

void draw() {
  background(100, 100, 150);
  for (int j = 0; j < enemies.size(); j++) {
  enemies.get(j).move();
  delete(enemies.get(j), j);
}
}

void delete(Enemy i, int j) {
     if (i.x > width + 20 || i.x < -280) {
       enemies.remove(j);
    }
    }

class Enemy {
  float x;
  float y;
  float speed;
  float n;
  float angle;
  float k;
  float l;
  

Enemy() {
    x = random(width);
    x = constrain(x,1,590);
    y = random(-1800,-30);
    speed = height/50;
    n = 0;
    angle = PI/600;
  }
  
  void display() {
    fill(51);
    stroke(0);
    triangle(x - 10, y, x + 10, y, x, y + 10);
}

    
  void move() { //<>//
    if (y >= 340 && x < width/2) {
      n = 1;
    } else if ( y >=340 && x > width/2) { 
      n = 2;
    } else {
      if (speed > 0) {
      y += speed;
      display();
  } 
  if (y < -20) {
}
}
if (n == 1) {
  if (x > 0 && y > 100) {
    pushMatrix();
     k = x;
     l = y;
    translate(k-50,l-70);
    x = 70;
    y = 70;
    speed = 0;
    popMatrix();
  } else {
  pushMatrix();
  translate(k-50,l-70);
  rotate(angle);
  display();
  angle += PI/50;
  popMatrix();
  }} if ( n == 2) {
   if (x > 0 && y > 100) {
    pushMatrix();
     k = x;
     l = y;
    translate(k,l-70);
    x = 70;
    y = 70;
    speed = 0;
    popMatrix();
  } else {
  pushMatrix();
  translate(k,l-70);
  rotate(angle);
  display();
  angle -= PI/50;
  popMatrix();
}
}
if (angle < -6) {
  pushMatrix();
  n = 0;
  translate(k,l-70);
   y += -7;
  x += 10;
  display();
  popMatrix();
} else if (angle > 6) {
  pushMatrix();
  n = 0;
  translate(k-50,l-70);
  y += -7;
  x += -10;
    display();
    popMatrix();
}
}
}
