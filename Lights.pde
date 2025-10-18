class Lights {
  float xL, yL;
  boolean lightsOn;
  int lastColorChange;
  int colorChangeInterval = 1000;
  color[] lightColors;
  int numLights = 11;
  int theme = 1;
  
  Lights(float tempX, float tempY){
    xL = tempX;
    yL = tempY;
    lightsOn = false;
    lastColorChange = 0;
    lightColors = new color[numLights];
    randomizeLightColors();
  }
  
  void setTheme(int themeNumber) {
    theme = themeNumber;
  }
  
  void display(){
    lights(xL, yL);
  }
  
  void lights(float xL, float yL){
    if(millis() - lastColorChange > colorChangeInterval && lightsOn) {
      randomizeLightColors();
      lastColorChange = millis();
    }
    
    float currentX = xL;
    int lightIndex = 0;
    
    while (currentX <= 1030) {
      color outerColor;
      
      if(lightsOn) {
        outerColor = lightColors[lightIndex];
      } else {
        outerColor = #9B5551;
      }
      
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
      if(theme == 1) {
        // Christmas colors
        int pick = int(random(4));
        if(pick == 0) lightColors[i] = #FF0000;
        else if(pick == 1) lightColors[i] = #00FF00;
        else if(pick == 2) lightColors[i] = #FFFFFF;
        else lightColors[i] = #FFD700;
      } else if(theme == 2) {
        // Blue/Winter
        int pick = int(random(3));
        if(pick == 0) lightColors[i] = #0000FF;
        else if(pick == 1) lightColors[i] = #FFFFFF;
        else lightColors[i] = #87CEEB;
      } else {
        // Random
        lightColors[i] = color(random(255), random(255), random(255));
      }
    }
  }
  
  void mousePressed() {
    lightsOn = !lightsOn;
    if(lightsOn) randomizeLightColors();
  }
}