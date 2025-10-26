class Structure {
    float Posx, Posy;
    color dark, medium, light;

    Structure(float initX, float initY){
        Posx = initX;
        Posy = initY;
    }

    void display(){
        noStroke();
        if(decoration.theme==2) fill(decoration.theme2Colors[2]);
        else fill(#24221c);
        rect(Posx,Posy+567,1200,200);

        arcBackground(193,96);

        if(decoration.theme==0){
            patternRomboid(155,45);
            patternRomboid(140,65);
            patternRomboid(155,85);
        }

        patternArc(193,92);
        patternArcDecor(187,90);

        fill(#F0F7FB);
        noStroke();
        rect(Posx,Posy,950,10);

        fill(#B4B2B6);
        rect(Posx,Posy+10,950,10);

        fill(#F0F7FB);
        rect(Posx,Posy+30,900,30);

        fill(#847F7B);
        quad(Posx-450,Posy+45,Posx+450,Posy+45,Posx+420,Posy+60,Posx-420,Posy+60);


        //side walls
        fill(#F0F7FB);
        rect(Posx-412,Posy+268,15,410);
        rect(Posx+412,Posy+264,15,406);
        rect(width/2,Posy+200,820,30);

        // top windows
        noFill();
        stroke(#F0F7FB);
        strokeWeight(15);
        rect(Posx-372,Posy+127,80,120);
        rect(Posx-285,Posy+127,95,120);
        rect(Posx-175,Posy+127,110,120);
        rect(Posx+110,Posy+127,230,120);
        rect(Posx+375,Posy+127,70,120);
        //journey sign
        fill(#fbce7e);
        rect(Posx+285,Posy+127,110,120);
        // normal sign
        fill(#1c1c1c);
        rect(Posx-55,Posy+127,110,120);
        
    



        // bottom windows
        fill(#8095cae6);
        stroke(#F0F7FB);
        strokeWeight(15);
        rect(Posx+320,Posy+340,180,240);
        rect(Posx-120,Posy+340,230,240);


        //left door entrance
        fill(#F0F7FB);
        noStroke();
        quad(Posx-412,Posy+212,Posx-370,Posy+227,Posx-370,Posy+447,Posx-412,Posy+472);
        fill(#c0c8d1);
        quad(Posx-412,Posy+212,Posx-242,Posy+212,Posx-242,Posy+227,Posx-370,Posy+227);
        fill(#aeb5bd);
        rect(Posx-307,Posy+338,130,225);
        fill(#847F7B);
        quad(Posx-415,Posy+474,Posx-372,Posy+448,Posx-260,Posy+448,Posx-260,Posy+474);


        //main door entrance
        fill(#F0F7FB);
        quad(Posx,Posy+212,Posx+14,Posy+227,Posx+14,Posy+437,Posx,Posy+470);
        quad(Posx+223,Posy+212,Posx+205,Posy+227,Posx+205,Posy+437,Posx+223,Posy+470);
        fill(#847F7B);
        quad(Posx-15,Posy+212,Posx+233,Posy+212,Posx+208,Posy+228,Posx+14,Posy+228);
        quad(Posx-20,Posy+470,Posx+12,Posy+430,Posx+210,Posy+430,Posx+252,Posy+470);


        //middle part
        fill(#B4B2B6);
        noStroke();
        rect(width/2,Posy+198,811,18);
        fill(#847F7B);
        rect(width/2,Posy+192,811,4);
        rect(Posx+85,Posy+214,640,5);

    }

    void patternRomboid(float xR, float yR){
            while (xR<=1050) {
                noStroke();
                fill(#855D50);
                quad(xR,yR,xR+10,yR+10,xR,yR+20,xR-10,yR+10);
                xR = xR + 25;
            }
    }
    void patternArc(float xA, float yA){
        if(decoration.theme==0){
                while (xA<=1030) {
                noFill();
                stroke(#855D50);
                strokeWeight(20);
                arc(xA,yA,116,116,PI, TWO_PI);
                fill(#F0F7FB);
                noStroke();
                rect(xA,yA-58,13,22);
                xA = xA + 116;
        }
        }
        if(decoration.theme==1){
            int colorIndex = 0;
            while (xA<=1030) {
            fill(decoration.theme1Colors[colorIndex % 4]);
            stroke(#ffffff);
            strokeWeight(20);
            arc(xA,yA+10,120,130,PI, TWO_PI);
            fill(#000000);
            noStroke();
            rect(xA,yA-58,13,22);
            xA = xA + 116;
            colorIndex++;
        }
        }
        if(decoration.theme==2){
            while (xA<=1030) {
            fill(decoration.theme2Colors[2]);
            stroke(decoration.theme2Colors[3]);
            strokeWeight(20);
            arc(xA,yA+10,120,130,PI, TWO_PI);
            fill(#FFFFFF);
            noStroke();
            rect(xA,yA-58,13,22);
            xA = xA + 116;
        }
        }
    }


    void arcBackground(float xA, float yA){
        while (xA<=1030) {
                fill(#E0D3A7);
                arc(xA,yA,116,116,PI, TWO_PI);
                xA = xA + 116;
        }
    }

    void patternArcDecor(float x2A, float y2A){
        while (x2A<=1200) {
                fill(#F0F7FB);
                noStroke();
                rect(x2A-51,y2A,23,25);
                x2A = x2A + 116;
        }
    }

    void column(float xC, float yC){
        if(decoration.theme==0) { dark = #552526; medium = #9B5551; light = #E9A7A7; }
        else if(decoration.theme==1) { dark = #661316; medium = decoration.theme1Colors[0]; light = #ed797d; }
        else if(decoration.theme==2) { dark = decoration.theme2Colors[0]; medium = #8f1b0a; light = #bf5c4d; }
        fill(dark);
        noStroke();
        rect(xC,yC,30,10);

        fill(medium);
        rect(xC,yC+18,20,27);

        fill(light);
        rect(xC,yC+30,30,5);
        fill(dark);
        rect(xC,yC+35,30,5);

        fill(medium);
        quad(xC-11,yC+37,xC+11,yC+37,xC+13,yC+206,xC-13,yC+206);

        fill(light);
        rect(xC,yC+208,31,5);
        fill(dark);
        rect(xC,yC+213,31,5);
        fill(medium);
        rect(xC,yC+230,26,30);
        fill(light);
        rect(xC,yC+238,32,5);
        fill(dark);
        rect(xC,yC+243,32,5);

        fill(medium);
        quad(xC-13,yC+245,xC+13,yC+245,xC+14,yC+366,xC-14,yC+366);

        fill(light);
        rect(xC,yC+370,35,15);
        fill(dark);
        rect(xC,yC+375,35,5);
        fill(medium);
        rect(xC,yC+400,32,45);

    }

        void mousePressed(){
        // Check if mouse is clicked in twister sign
        if (mousePressed && mouseX >= Posx+110-115 && mouseX <= Posx+110+115 && mouseY >= Posy+127-60 && mouseY <= Posy+127+60) {
            decoration.changeTheme(1);
            lights.randomizeLightColors();
        }
        // Check if mouse is clicked in journey sign
        if (mousePressed && mouseX >= Posx+285-55 && mouseX <= Posx+285+55 && mouseY >= Posy+127-60 && mouseY <= Posy+127+60) {
            decoration.changeTheme(2);
            lights.randomizeLightColors();
        }
        // Check if mouse is clicked in normal sign
        if (mousePressed && mouseX >= Posx-55-55 && mouseX <= Posx-55+55 && mouseY >= Posy+127-60 && mouseY <= Posy+127+60) {
            decoration.changeTheme(0);
            lights.randomizeLightColors();
        }
    }

}