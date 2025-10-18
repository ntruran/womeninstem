class Structure {
    float Posx, Posy;
    Structure(float initX, float initY){
        Posx = initX;
        Posy = initY;
    }

    void display(){

        arcBackground(193,96);

        patternRomboid(155,45);
        patternRomboid(140,65);
        patternRomboid(155,85);

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
        rect(Posx-55,Posy+127,110,120);
        rect(Posx+110,Posy+127,230,120);
        rect(Posx+285,Posy+127,110,120);
        rect(Posx+375,Posy+127,70,120);

        // bottom windows
        rect(Posx+320,Posy+340,180,240);
        rect(Posx-120,Posy+340,230,240);


        //middle part
        //stroke(#dce2e6);
        //strokeWeight(5);
        //rect(width/2,Posy+200,800,10);

        //left door entrance
        fill(#F0F7FB);
        noStroke();
        quad(Posx-412,Posy+212,Posx-370,Posy+227,Posx-370,Posy+447,Posx-412,Posy+472);
        fill(#c0c8d1);
        quad(Posx-412,Posy+212,Posx-242,Posy+212,Posx-242,Posy+227,Posx-370,Posy+227);
        fill(#aeb5bd);
        rect(Posx-307,Posy+338,130,225);


        //main door entrance
        fill(#F0F7FB);
        quad(Posx,Posy+212,Posx+18,Posy+227,Posx+18,Posy+437,Posx,Posy+470);
        quad(Posx+223,Posy+212,Posx+205,Posy+227,Posx+205,Posy+437,Posx+223,Posy+470);
        fill(#847F7B);
        quad(Posx-5,Posy+212,Posx+223,Posy+212,Posx+208,Posy+228,Posx+14,Posy+228);
        quad(Posx-20,Posy+470,Posx+12,Posy+430,Posx+210,Posy+430,Posx+252,Posy+470);

        //columns
        column(Posx-244,Posy+56);
        column(Posx-20,Posy+56);
        column(Posx+244,Posy+56);
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
        fill(#552526); //dark
        noStroke();
        rect(xC,yC,30,10);

        fill(#9B5551); //medium
        rect(xC,yC+18,20,27);

        fill(#E9A7A7); //light
        rect(xC,yC+30,30,5);
        fill(#552526);
        rect(xC,yC+35,30,5);

        fill(#9B5551);
        quad(xC-11,yC+37,xC+11,yC+37,xC+13,yC+206,xC-13,yC+206);

        fill(#E9A7A7); //light
        rect(xC,yC+208,31,5);
        fill(#552526);
        rect(xC,yC+213,31,5);
        fill(#9B5551); //medium
        rect(xC,yC+230,26,30);
        fill(#E9A7A7); //light
        rect(xC,yC+238,32,5);
        fill(#552526);
        rect(xC,yC+243,32,5);

        fill(#9B5551);
        quad(xC-13,yC+245,xC+13,yC+245,xC+14,yC+366,xC-14,yC+366);

        fill(#E9A7A7); //light
        rect(xC,yC+370,35,15);
        fill(#552526);
        rect(xC,yC+375,35,5);
        fill(#9B5551); //medium
        rect(xC,yC+400,32,45);

    }
    
}