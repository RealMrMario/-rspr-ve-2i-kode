class Tree extends Plante {

  Tree() {

    img2 = loadImage("Tree.png");
  }
  void display() {
    image(img2, x, y, scale, scale);
  }
}
