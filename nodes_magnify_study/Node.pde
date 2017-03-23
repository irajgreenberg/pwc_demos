class Node {
  PVector pos;
  float growthRate = .525;
  float growthDamping = .955;
  float growth = 0;
  float speed;
  float radius;
  float radiusMin, radiusMax;
  int id;
  boolean isShrinkable = false;

  Node() {
  }

  Node(PVector pos, float radius) {
    this.pos = pos;
    this.radius = radius;
  }
  
  Node(PVector pos, float radius, int id) {
    this.pos = pos;
    this.radius = radius;
    this.id = id;
  }

  void grow() {
    growth += growthRate;
  }
  void shrink(){
    if (isShrinkable){
     growth *=.25;
    }
  }

  void display() {
    if (isShrinkable){
      growth *= growthDamping;
     }
    pushMatrix();
    translate(pos.x, pos.y);
    scale(radius+growth);
    ellipse(0, 0, 1, 1);
    popMatrix();
    
  }
  
  boolean isHit(PVector mouse){
    return mouse.dist(pos) < radius;
  }
}