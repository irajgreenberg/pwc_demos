int nodes = 12;
NodeCollection nc;

void setup(){
  size(1800, 1000);
  nc = new NodeCollection(new PVector(100, 100), new PVector(1400, 200), 12);
}

void draw(){
  nc.showBounds();
  nc.display();
}