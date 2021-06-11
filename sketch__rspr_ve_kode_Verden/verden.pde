class Verden {

  ArrayList<Dyr> listDyr = new ArrayList<Dyr>();//arrayliste
  ArrayList<Plante> listPlante = new ArrayList<Plante>();
  ArrayList<Terrain> listTerrain = new ArrayList<Terrain>();


  void lavhund() {//lav hund
    hund h = new hund();//laver et hunde objekt
    h.x = mouseX;//angiver x cords til hvad musens x er 
    h.y = mouseY;
    listDyr.add(h);//adder objectet til arraylisten dyr
  }

  void lavBlaahval() {
    blaahval b = new blaahval();
    b.x = mouseX;
    b.y = mouseY;
    listDyr.add(b);
  }

  void lavFlower() {
    Flower f = new Flower();
    f.x = mouseX;
    f.y = mouseY;
    listPlante.add(f);
  }

  void lavTree() {
    Tree t = new Tree();
    t.x = mouseX;
    t.y = mouseY;
    listPlante.add(t);
  }

  void lavSWAMP() {
    swamp s = new swamp();
    s.x = mouseX;
    s.y = mouseY;
    listTerrain.add(s);
  }
  void opdaterVerdenDyr() {//opdatere dyr
    for (Dyr d : listDyr ) {// for loopet der gikker arraylisten igennem og displayer og bevæger
      d.display();
      d.move();
    }
  }

  void opdaterVerdenPlants() {
    for (Plante p : listPlante) {
      p.display();
      p.scales();
    }
  }
  void opdaterVerdenTerrain() {
    for (Terrain Te : listTerrain) {
      Te.display();
    }
  }
  void collision() {// to for loops inde i hinanden
    for (Terrain t : listTerrain) {
      for (Dyr d : listDyr) {
        float r = 75;// gør at vi definere hvornår de rammer hinaden 
        if (d.y < t.y + (t.terrainHeight - r) && d.x < t.x + (t.terrainWidth - r) && d.y > t.y - (t.terrainHeight - r) && d.x > t.x - (t.terrainWidth-75)) {
          d.x = d.x - d.speedX*0.5;
          d.y = d.y - d.speedY*0.5;
        } else {
          d.x = d.x + d.speedX; 
          d.y = d.y + d.speedY;    
          if (d.x>width|| d.x <0) {
            d.speedX *= -1;
          }
          if (d.y>height|| d.y < 0) {
            d.speedY *= -1;
          }
        }
      }
    }
  }
}
