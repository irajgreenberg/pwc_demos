class NodeCollection {
  int count;
  ArrayList<Node> nodes = new ArrayList<Node>();

  NodeCollection() {
  }

  NodeCollection(int count) {
    this.count = count;
    // default centering
    for(int i=0; i<count; i++){
      nodes.add(new Node());
    }
  }
}