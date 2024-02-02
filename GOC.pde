SpriteManager _SM;

void setup() {
    size(1024, 768, P3D);
    _SM = new SpriteManager();
    _SM.spawn(new Invader(250, 50));
    _SM.spawn(new Shooter(150, 100));
    _SM.spawn(new Shooter(15, 57));
    _SM.spawn(new Shooter(10, 55));
    _SM.spawn(new Block(150, 100, 50, 50));
    _SM.spawn(new Block(50, 50, 100, 150));
    noStroke();
}

void draw() {
    lights();
    background(0);
    float cameraY = height/2.0;
    float fov = mouseX/float(width) * PI/2;
    float cameraZ = cameraY / tan(fov /2.0);
    float aspect = float(width)/float(height);
    if(mousePressed) {
      aspect = aspect / 2.0;
    }
    perspective(fov, aspect, cameraZ/10.0, cameraZ*10.0);
    
    translate(width/2+30, height/2, 0);
    rotateX(-PI/6);
    rotateY(PI/3 + mouseY/float(height) * PI);
    box(45);
    translate(0, 0, -50);
    box(30);
    _SM.manage();
}

void keyPressed() {
    _SM.player.keyDown();
}

void keyReleased() {
    _SM.player.keyUp();
}
