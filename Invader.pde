class Invader extends Sprite {
    
    // constructor
    Invader(float x, float y) {
        super(x, y, 40, 40);
        vel = new PVector(0, 3); // moving right
    }
    
    @Override // change directions left and right
    void update() {
        pos.add(vel);
        
        if (pos.y < 0 || pos.y > height) {
            vel.y *= -1;
        }
    }
}
