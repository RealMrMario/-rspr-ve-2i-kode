Verden v = new Verden();
//laver et objekt der hedder verden
void setup() {
  size(1000, 1000);
  //skærm størrelse
}

void draw() {
  clear();
  text("select object using numbers:",10,20);
  text("1 = Dog, 2 = Bluewhale, 3 = Flower, 4 = Tree, 5 = Swamp/Forest.",10,40);
  textSize(16);
  //gør at det ikke gentager sig
  imageMode(CENTER);
  //gør at det billedet bliver loadet ud fra center
  v.opdaterVerdenTerrain();
  //henter metoden opdaterVerdenTerrain 
  v.opdaterVerdenDyr(); 
  v.opdaterVerdenPlants();
  v.collision();
}

void keyPressed() {//gør at når en knap bliver trykket så henter den metoden lav... fra classen verden
  if (key == '1') {
    v.lavhund();
  }
  if (key == '2') {
    v.lavBlaahval();
  }
  if (key == '3') {
    v.lavFlower();
  }
  if (key == '4') {
    v.lavTree();
  }
  if (key == '5') {
    v.lavSWAMP();
  }
}
