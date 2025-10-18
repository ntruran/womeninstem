class Structure {
    float Posx, Posy;

    Structure(float initX, float initY){
        Posx = initX;
        Posy = initY;
    }

    void display(){
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

        lights(185,Posy+28);

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
        fill(#c0c8d1);
        stroke(#F0F7FB);
        strokeWeight(5);
        rect(width/2,Posy+200,820,20);

        //left door
        fill(#F0F7FB);
        noStroke();
        quad(Posx-412,Posy+212,Posx-370,Posy+227,Posx-370,Posy+447,Posx-412,Posy+472);
        fill(#c0c8d1);
        quad(Posx-412,Posy+212,Posx-242,Posy+212,Posx-242,Posy+227,Posx-370,Posy+227);
        fill(#aeb5bd);
        rect(Posx-307,Posy+338,130,225);
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

    void patternArcDecor(float x2A, float y2A){
        while (x2A<=1200) {
                fill(#F0F7FB);
                noStroke();
                rect(x2A-51,y2A,23,25);
                x2A = x2A + 116;
        }
    }

    void lights(float xL, float yL){
        while (xL<=1030) {
                fill(#FF30F8);
                noStroke();
                circle(xL,yL,13);
                fill(#FFD4FE);
                circle(xL,yL,5);
                xL = xL + 103;
        }
    }
}