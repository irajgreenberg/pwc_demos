class Node {
  PVector pos;
  float growthRate;
  float speed;
  float radius;
  float radiusMin, radiusMax;

  Node() {
  }

  Node(PVector pos, float radius) {
    this.pos = pos;
    this.radius = radius;
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
}