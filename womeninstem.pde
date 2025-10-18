Structure s1;

void setup(){
    size(1200,700);
    rectMode(CENTER);
    s1 = new Structure(width/2, 100);
    background(#E0D3A7);
}

void draw(){
    s1.display();
}