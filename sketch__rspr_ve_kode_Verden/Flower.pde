class Flower extends Plante {

  Flower() {
    img2 = loadImage("Flower.png");
  }
  void display() {
    image(img2, x, y, scale, scale);
  }
}
