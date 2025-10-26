class Door {
  float x, y;
  float h;
  float openL, openR;
  boolean insideLeft, insideRight, toggleLeft, toggleRight;

  Door(float xD, float yD) {
    x = xD;
    y = yD;
    h = 202;
    openL = 0;
    openR = 0;
    insideLeft = false;
    insideRight = false;
    toggleLeft = false;
    toggleRight = false;
  }

  void update() {
    insideLeft = mouseX > x && mouseX < x + 93 && mouseY > y && mouseY < y + h;
    insideRight = mouseX > x + 97 && mouseX < x + 190 && mouseY > y && mouseY < y + h;
  }

  void display() {
    // animate left door
    if (toggleLeft) {
      if (openL < 1) openL += 0.05;
    } else {
      if (openL > 0) openL -= 0.05;
    }
    
    // animate right door
    if (toggleRight) {
      if (openR < 1) openR += 0.05;
    } else {
      if (openR > 0) openR -= 0.05;
    }

    // calculate new width and perspective effect
    float newWL = lerp(93, 0, openL);
    float yOffsetL = lerp(0, -20, openL);
    
    float newWR = lerp(93, 0, openR);
    float yOffsetR = lerp(0, -20, openR);

    // draw doors
    LeftDoor(x, y, newWL, yOffsetL);
    RightDoor(x + 190, y, newWR, yOffsetR);
  }
  
  void click() {
    update();
    if (insideLeft) {
      toggleLeft = !toggleLeft;
    }
    if (insideRight) {
      toggleRight = !toggleRight;
    }
  }

  void LeftDoor(float xD, float yD, float wD, float yOffset) {
    if(decoration.theme==0) { fill(#9B5551); stroke(#552526); }
    else if(decoration.theme==1) { fill(decoration.theme1Colors[1]); stroke(#164d13); }
    else if(decoration.theme==2) { fill(decoration.theme2Colors[1]); stroke(#75310b); }
    strokeWeight(5);
    quad(xD, yD, 
         xD + wD, yD - yOffset, 
         xD + wD, yD + h + yOffset, 
         xD, yD + h);
  }

  void RightDoor(float xD, float yD, float wD, float yOffset) {
    if(decoration.theme==0) { fill(#9B5551); stroke(#552526); }
    else if(decoration.theme==1) { fill(decoration.theme1Colors[1]); stroke(#164d13); }
    else if(decoration.theme==2) { fill(decoration.theme2Colors[1]); stroke(#75310b); }
    strokeWeight(5);
    quad(xD - wD, yD - yOffset, 
         xD, yD, 
         xD, yD + h, 
         xD - wD, yD + h + yOffset);
  }
}
