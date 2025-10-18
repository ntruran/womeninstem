Structure s1;
Door door;
Lights lights;

void setup(){
    size(1200,700);
    rectMode(CENTER);
    s1 = new Structure(width/2, 100);
    door = new Door(width/2, 100);
    lights = new Lights(185,128); // Change colors every 500ms, theme 1, 11 lights
    background(0);
}

void draw(){
    s1.display();
    door.display();
    lights.display();
}

void mousePressed(){
    lights.mousePressed();
}