class Block extends Sprite {
  
  Block(float x, float y, float w, float h) {
    super(x, y, w, h);
    vel = new PVector(5, 3); // moving right
  }
  
  void display() {
    fill(204, 102, 0);
    rect(pos.x, pos.y, size.x, size.y);
  }
  
  void update() {
    pos.add(vel);
    
    // left to right teleport
    if (pos.x < 0) {
      pos.x = width;
    } else if (pos.x > width - size.x) {
      pos.x = 0;
    }
    
    // up and down teleport 
    if (pos.y < 0) {
      pos.y = height;
    } else if (pos.y > height - size.y) {
      pos.y = 0;
    }
  }
}
