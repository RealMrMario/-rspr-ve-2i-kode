class Dyr {
  PImage img;
  float x;
  float y; 
  float speedX = random(-5, 5); 
  float speedY = random(-5, 5); 
  float dyrWidth;
  float dyrHeight;
  void move() {//bevæger ting
    //move
    x = x + speedX; 
    y = y + speedY;    
    if (x>width|| x <0) {
      speedX *= -1;
    }
    if (y>height|| y < 0) {
      speedY *= -1;
    }
  }

  void display() {
  }
}
