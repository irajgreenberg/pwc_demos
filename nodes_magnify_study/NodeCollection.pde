class NodeCollection {
  int nodeCount;
  ArrayList<Node> nodes = new ArrayList<Node>();
  PVector position, dimension;

  NodeCollection() {
  }

  NodeCollection(PVector position, PVector dimension, int nodeCount) {
    this.position = position;
    this.dimension = dimension;
    this.nodeCount = nodeCount;
    
    // arbitrary assumption: spacing between nodes is equal to node radius
    // and nodes edges align with dimension bounds
    float nodeRadius = (dimension.x/(nodeCount+nodeCount-1))/2.0;
    for(int i=0; i<nodeCount; i++){
      PVector nodePosition = new PVector((position.x)+ position.x*i, position.y);
      nodes.add(new Node(nodePosition, nodeRadius));
    }
  }
  
  void display(){
    for(int i=0; i<nodeCount; i++){
      nodes.get(i).display();
    }
  }
  
  void showBounds() {
    noFill();
    rect(position.x, position.y, dimension.x, dimension.y);
  }
}