class hund extends Dyr {


  hund() {
    img = loadImage("dog.png");
    dyrHeight = 50;
    dyrWidth = 50;
  }

  void display() {
    //display
    image(img, x, y, dyrWidth, dyrHeight);
  }
}
