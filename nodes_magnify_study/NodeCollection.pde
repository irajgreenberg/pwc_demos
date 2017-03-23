class NodeCollection {
  int nodeCount;
  ArrayList<Node> nodes = new ArrayList<Node>();
  PVector position, dimension;

  float mx, my;
  PVector mouse;

  NodeCollection() {
  }

  NodeCollection(PVector position, PVector dimension, int nodeCount) {
    this.position = position;
    this.dimension = dimension;
    this.nodeCount = nodeCount;

    // arbitrary assumption: spacing between nodes is equal to node radius
    // and nodes edges align with dimension bounds
    float nodeRadius = (dimension.x/(nodeCount+nodeCount-1))/2.0;
    for (int i=0; i<nodeCount; i++) {
      PVector nodePosition = new PVector(nodeRadius+position.x+nodeRadius*4*i, nodeRadius+position.y);
      nodes.add(new Node(nodePosition, nodeRadius, i));
    }
  }

  void display() {
    for (int i=0; i<nodeCount; i++) {
      Node n = nodes.get(i);
      n.display();

      if (n.isHit(mouse)) {
        n.isShrinkable = false;
        n.grow();
      } else {
        n.isShrinkable = true;
      }
    }
  }

  void showBounds() {
    noFill();
    rect(position.x, position.y, dimension.x, dimension.y);
  }

  void setMouseEvents(float mx, float my) {
    this.mx = mx;
    this.my = my;
    mouse = new PVector(mx, my);
  }
}