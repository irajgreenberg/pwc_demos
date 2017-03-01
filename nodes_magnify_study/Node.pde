class Node {
  PVector pos;
  float growthRate;
  float speed;
  float radius;
  float radiusMin, radiusMax;
  int id;

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
    radius += growthRate;
  }

  void display() {
    pushMatrix();
    translate(pos.x, pos.y);
    scale(radius);
    ellipse(0, 0, 1, 1);
    popMatrix();
  }
  
  boolean isHit(PVector mouse){
    return mouse.dist(pos) < radius;
  }
}