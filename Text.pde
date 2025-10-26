class Text {
    float x, y;
    PFont rustic, sign;

    Text(float initX, float initY){
        x = initX;
        y = initY;
        rustic = createFont("Brush Script MT", 30);
        sign = createFont("MunaBold",10);
    }


    void drawOutlineText(String txt, float x, float y) {
        textFont(rustic);
        textAlign(LEFT, BASELINE);
        
        // White outline
        fill(#FFFFFF);
        drawStroke(txt, x, y, 3);
        
        // Black fill
        fill(#000000);
        text(txt, x, y);
    }

    void drawStroke(String txt, float x, float y, float weight) {
        for (int i = 0; i < 16; i++) {
            float angle = TWO_PI * i / 16;
            float offsetX = cos(angle) * weight;
            float offsetY = sin(angle) * weight;
            text(txt, x + offsetX, y + offsetY);
        }
    }

    void signText(String txt, float x, float y){
        textFont(sign);
        fill(#ffffff);
        text(txt, x, y);
    }

    void twister(String txt, float x, float y){
        textFont(rustic);
        textAlign(LEFT, BASELINE);
        
        // Yellow fill
        fill(#000000);
        text(txt, x, y);
    }

    void clickMe(String txt, float Posx, float Posy){
        textFont(sign);
        textSize(40);  
        textAlign(LEFT, BASELINE);
        // Dark gray fill
        fill(#383838);
        text(txt, Posx, Posy);
    }

    void mouse(){
        // Check if mouse is clicked in twister sign
        if (mouseX >= s1.Posx+110-115 && mouseX <= s1.Posx+110+115 && mouseY >= s1.Posy+127-60 && mouseY <= s1.Posy+127+60) clickMe("Click Me", 520, 720);
        // Check if mouse is clicked in journey sign
        if (mouseX >= s1.Posx+285-55 && mouseX <= s1.Posx+285+55 && mouseY >= s1.Posy+127-60 && mouseY <= s1.Posy+127+60) clickMe("Click Me", 520, 720);
        // Check if mouse is clicked in normal sign
        if (mouseX >= s1.Posx-55-55 && mouseX <= s1.Posx-55+55 && mouseY >= s1.Posy+127-60 && mouseY <= s1.Posy+127+60) clickMe("Click Me", 520, 720);
        // Check if mouse is clicked in open/closed sign
        if (mouseX > 440 && mouseX < 500 && mouseY > 445 && mouseY < 490) clickMe("Click Me", 520, 720);
        if (mouseX > door.x + 97 && mouseX < door.x + 190 && mouseY > door.y && mouseY < door.y + door.h) clickMe("Click Me", 520, 720);
        if (mouseX > door.x && mouseX < door.x + 93 && mouseY > door.y && mouseY < door.y + door.h) clickMe("Click Me", 520, 720);
    }
}