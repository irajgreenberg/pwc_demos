int nodes = 24;
NodeCollection nc;

void setup(){
  size(1400, 600);
  nc = new NodeCollection(new PVector(100, 100), new PVector(1200, 200), nodes);
}

void draw(){
  background(255);
  //nc.showBounds();
  
  nc.setMouseEvents(mouseX, mouseY);
  nc.display();
}