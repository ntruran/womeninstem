class Decoration {
    float x, y, angle;
    PImage[] posters;  
    PImage img;
    int theme;
    color [] theme1Colors = {#c7282d, #2c9426, #009dff, #f8ff24};
    color [] theme2Colors = {#72180e, #f16314, #edab5f, #f3c37a};

    Decoration(float xPos, float yPos) {
        x = xPos;
        y = yPos;
        angle = 0;
        theme = 0;
    }

    void theme(){
        if(theme==0){
            background(#35548c);
            portal(0.05,710, 420);
            s1.display();
            door.display();
            themeSigns(600,200);
            windowReflection(width/2, 100);
            lights.display();
            openSign.display();
            curtain.display();
            text.drawOutlineText("Comicasa", 425, 400);
            s1.column(x+500-244,y+56);
            s1.column(x+500-20,y+56);
            s1.column(x+500+244,y+56);
            movingObject.drawBicycle();
            movingObject.update();
        }
        if(theme==1){
            background(#0386b7);
            portal(0.05,710, 420);
            s1.display();
            door.display();
            themeSigns(600,200);
            windowReflection(width/2, 100);
            lights.display();
            openSign.display();
            curtain.display();
            text.drawOutlineText("Comicasa", 425, 400);
            s1.column(x+500-244,y+56);
            s1.column(x+500-20,y+56);
            s1.column(x+500+244,y+56);
            movingObject.drawTwister();
            movingObject.update();
        }
        if (theme==2){
            background(#f9ddb3);
            portal(0.05,710, 420);
            s1.display();
            door.display();
            themeSigns(600,200);
            windowReflection(width/2, 100);
            lights.display();
            openSign.display();
            curtain.display();
            text.drawOutlineText("Comicasa", 425, 400);
            s1.column(x+500-244,y+56);
            s1.column(x+500-20,y+56);
            s1.column(x+500+244,y+56);
            movingObject.drawJourney();
            movingObject.update();
        }
    }

    void themeSigns(float x, float y){
        // Twister sign
        noStroke();
        fill(#2c9426); // Green circle
        circle(x+110, y+5, 50);
        fill(#f8ff24); // Yellow circle
        circle(x+40, y+25, 50);
        fill(#c7282d);  // Red circle
        circle(x+180, y+25, 50);
        text.twister("Twister", x+70, y+60);

        // Journey sign
        noStroke();
        fill(#f9e9ab);
        triangle(x+235, y+80, x+285, y+97-100, x+285+50, y+80);
        fill(#A0916B);
        triangle(x+235, y+80, x+285, y+157-100, x+285+50, y+80);
    }

    void changeTheme(int newTheme) {
        theme = newTheme;
    }

    void windowReflection(float Posx, float Posy){
       // window reflections
        fill(#90bbe2f7);
        noStroke();
        quad(Posx-405, Posy+100,
            Posx-340, Posy+80,
            Posx-340, Posy+100,
            Posx-405, Posy+120);
        quad(Posx-405, Posy+130,
            Posx-340, Posy+110,
            Posx-340, Posy+120,
            Posx-405, Posy+140);

        quad(Posx-325, Posy+105,
            Posx-250, Posy+80,
            Posx-250, Posy+100,
            Posx-325, Posy+125);
        quad(Posx-325, Posy+135,
            Posx-250, Posy+110,
            Posx-250, Posy+120,
            Posx-325, Posy+145);

        quad(Posx-223, Posy+105,
            Posx-128, Posy+80,
            Posx-128, Posy+100,
            Posx-223, Posy+125);
        quad(Posx-223, Posy+135,
            Posx-128, Posy+110,
            Posx-128, Posy+120,
            Posx-223, Posy+145);

        quad(Posx-123+20, Posy+105,
            Posx-28+20, Posy+80,
            Posx-28+20, Posy+100,
            Posx-123+20, Posy+125);
        quad(Posx-123+20, Posy+135,
            Posx-28+20, Posy+110,
            Posx-28+20, Posy+120,
            Posx-123+20, Posy+145);

        quad(Posx+7, Posy+125,
            Posx+218, Posy+90,
            Posx+218, Posy+110,
            Posx+7, Posy+145);
        quad(Posx+7, Posy+155,
            Posx+218, Posy+120,
            Posx+218, Posy+130,
            Posx+7, Posy+165);

        quad(Posx+257, Posy+105,
            Posx-118+451, Posy+80,
            Posx-118+451, Posy+100,
            Posx+257, Posy+125);
        quad(Posx+257, Posy+135,
            Posx-118+451, Posy+110,
            Posx-118+451, Posy+120,
            Posx+257, Posy+145);

        quad(Posx+347, Posy+105,
            Posx-128+531, Posy+80,
            Posx-128+531, Posy+100,
            Posx+347, Posy+125);
        quad(Posx+347, Posy+135,
            Posx-128+531, Posy+110,
            Posx-128+531, Posy+120,
            Posx+347, Posy+145);
    }

    void portal(float pulseSpeed, float x, float y){
        noStroke();
        fill(0);
        rect(x,y, 200, 220);
        
        // Draw multiple rotating rings
        for (int i = 8; i > 0; i--) {
            
            
            // Calculate ring size and colors
            float ringSize = i * 12;
            float hue = (angle * 50 + i * 30) % 360;
            float brightness = 70 + sin(angle * 2 + i) * 20;
            
            noFill();
            strokeWeight(3);
            
            // Outer glow
            stroke(hue, 80, brightness, 30);
            ellipse(x, y, ringSize + 6, ringSize + 6);
            
            // Main ring
            stroke(hue, 90, brightness, 80);
            ellipse(x, y, ringSize, ringSize);

            // Inner highlight
            stroke(hue, 50, 100, 50);
            ellipse(x, y, ringSize - 4, ringSize - 4);

        }
        
        // Central core
        float coreSize = 20 + sin(angle * 3) * 8;
        
        // Core glow
        for (int i = 3; i > 0; i--) {
            fill(200, 80, 90, 15);
            noStroke();
            ellipse(x, y, coreSize * i * 1.5, coreSize * i * 1.5);
        }
        
        // Core center
        fill(200, 70, 100);
        noStroke();
        ellipse(x, y, coreSize, coreSize);
        
        angle += pulseSpeed;
        }
    }

