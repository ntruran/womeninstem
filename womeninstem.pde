Structure s1;
Door door;
Lights lights;
PFont font;
Text text;
Sign openSign;
Curtain curtain;
MovingObject movingObject;
Decoration decoration;

void setup(){
    size(1200,750);
    rectMode(CENTER);
    s1 = new Structure(width/2, 100);
    decoration = new Decoration(100, 100);
    movingObject = new MovingObject(-110, 600, 140);
    door = new Door(615, 328);
    lights = new Lights(185,128); // Change colors every 500ms, theme 1, 11 lights
    openSign = new Sign(470,460);
    curtain = new Curtain(710,317);
    text = new Text(470,460);
    colorMode(HSB, 360, 100, 100, 100);
}


void draw(){
    decoration.theme();
    text.mouse();
}

void mousePressed(){
    door.click();
    openSign.isMouseInside();
    s1.mousePressed();
}
