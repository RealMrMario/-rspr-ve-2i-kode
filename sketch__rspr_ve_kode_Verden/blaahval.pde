class blaahval extends Dyr {


  blaahval() {
    img = loadImage("Whale.png");
    dyrWidth = 50;
    dyrHeight = 80;
  }

  void display() {
    image(img, x, y, dyrHeight, dyrWidth);
  }
}
