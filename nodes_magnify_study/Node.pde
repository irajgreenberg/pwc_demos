class Node {
  PVector pos;
  float radius;
  
  Node(){}
  Node(PVector pos, float radius){
    this.pos = pos;
    this.radius = radius;
  }
  
  void display(){
    pushMatrix();
    translate(pos.x, pos.y);
    ellipse(0,0,radius*2, radius*2);
    popMatrix();
  }
}