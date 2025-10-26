
class Lights {
  float xL, yL;
  int lastColorChange;
  int colorChangeInterval = 1000;
  color[] lightColors;
  int numLights = 11;
  
  Lights(float tempX, float tempY){
    xL = tempX;
    yL = tempY;
    lastColorChange = 0;
    lightColors = new color[numLights];
    randomizeLightColors();
  }
  
  
  void display(){
    lights(xL, yL);
  }
  
  void lights(float xL, float yL){
    if(millis() - lastColorChange > colorChangeInterval) {
      randomizeLightColors();
      lastColorChange = millis();
    }
    
    float currentX = xL;
    int lightIndex = 0;
    
    while (currentX <= 1030) {
      color outerColor;
      
      outerColor = lightColors[lightIndex];
      
      fill(outerColor);
      noStroke();
      circle(currentX, yL, 13);
      fill(lerpColor(outerColor, color(255), 0.6));
      circle(currentX, yL, 5);
      
      currentX = currentX + 103;
      lightIndex++;
    }
  }
  
  void randomizeLightColors() {
    for(int i = 0; i < numLights; i++) {
      if(decoration.theme == 1) {
        // Twister Theme
        int pick = int(random(4));
        if(pick == 0) lightColors[i] = decoration.theme1Colors[0];
        else if(pick == 1) lightColors[i] = decoration.theme1Colors[1];
        else if(pick == 2) lightColors[i] = decoration.theme1Colors[2];
        else lightColors[i] = decoration.theme1Colors[3];
      } else if(decoration.theme == 2) {
        // Journey Theme
        int pick = int(random(4));
        if(pick == 0) lightColors[i] = decoration.theme2Colors[0];
        else if(pick == 1) lightColors[i] = decoration.theme2Colors[1];
        else if(pick == 2) lightColors[i] = decoration.theme2Colors[2];
        else lightColors[i] = decoration.theme2Colors[3];
      } else {
        // Random
        lightColors[i] = #9B5551;
      }
    }
  }
  
}