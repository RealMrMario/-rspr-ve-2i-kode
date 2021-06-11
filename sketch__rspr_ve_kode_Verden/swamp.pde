class swamp extends Terrain {

  swamp() {
    img3 = loadImage("SWAMP.png");
    terrainHeight = 150;
    terrainWidth = 150;
  }
  void display() {
    image(img3, x, y, terrainHeight, terrainWidth);
  }
}
