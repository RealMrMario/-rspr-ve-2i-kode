class Plante {
  PImage img2;
  float scale = 50; 
  int x;
  int y;
  float s = random(0.2, 0.8);//hastigs variable 

  void scales() {
    scale = scale+s;
    if (scale > random(180, 200)) {

      s = 0;
    }
  }

  void display() {
  }
}
