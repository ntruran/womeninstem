class MovingObject {
  float x, y, speedX, radius, legAngle, bobOffset, yBase, yJourney;  // Radius of the object
  color c;         // Color of the object

MovingObject(float startX, float startY, float r) {
    x = startX;
    y = startY;
    radius = r;
    yBase = y;
    legAngle = 0;
    bobOffset = 0;
        
        // Loop position
        if (x > width + 50) {
            x = -100;
        }

    speedX = random(2, 10); // Slower, varied speed (moving right)
    c = color(random(255), random(255), random(255)); // Random color
}

void update() {
    x += speedX;
    legAngle += 0.15;
    bobOffset = sin(legAngle * 2) * 3;
    yJourney = yBase + bobOffset;
    // Respawn at left when it goes off screen
    if (x > width + radius) {
        x = -radius;
        c = color(random(255), random(255), random(255)); // Change color on respawn
        y = random(620, 700);
    }
  }

void drawBicycle() {
  pushMatrix();
  translate(x, y);
  
  // Wheel parameters
  float wheelRadius = 60;
  float wheelDistance = 180;
  
  // Back wheel
  drawWheel(-wheelDistance/2, 0, wheelRadius);
  
  // Front wheel
  drawWheel(wheelDistance/2, 0, wheelRadius);
  
  // Frame color
  stroke(c); // Use the object's color
  
  // Frame structure (classic diamond shape)
  strokeWeight(5);
  
  // Bottom tube (from back wheel to pedal area)
  line(-wheelDistance/2, 0, 0, -15);
  
  // Seat tube (from pedal area up to seat)
  line(0, -15, -20, -65);
  
  // Top tube (from seat to handlebar area)
  line(-20, -65, wheelDistance/2 - 20, -45);
  
  // Down tube (from handlebar area to pedal)
  line(wheelDistance/2 - 20, -45, 0, -15);
  
  // Seat stays (from back wheel to seat)
  strokeWeight(4);
  line(-wheelDistance/2, 0, -20, -65);
  line(-wheelDistance/2, 0, -30, -55);
  
  // Front fork
  line(wheelDistance/2 - 35, -95, wheelDistance/2 , 0);
  
   // Pedal crank area
  fill(c);
  noStroke();
  circle(0, -15, 20);
 
  
  // Seat post
  stroke(c);
  strokeWeight(4);
  line(-20, -65, -20, -80);
  
   // Seat 
  fill(80, 60, 40); // Brown color
  noStroke();
  ellipse(-20, -80, 35, 15);
  
  // Handlebar
  stroke(80, 60, 40);
  strokeWeight(6);
  line(45, -95, 65, -95);
  //arc(wheelDistance/2 - 20, -65, 40, 30, PI, TWO_PI);
  
  popMatrix();
}

void drawWheel(float x, float y, float r) {
  pushMatrix();
  translate(x, y);
  
  // Tire
  strokeWeight(8);
  stroke(0);
  noFill();
  circle(0, 0, r * 2);
  
  // Rim
  strokeWeight(2);
  stroke(150);
  circle(0, 0, r * 1.7);
  
  // Spokes (animated rotation)
  stroke(180);
  strokeWeight(1);
  int numSpokes = 20;
  float spokeAngle = (frameCount * 0.05) % (TWO_PI / numSpokes);
  
  for (int i = 0; i < numSpokes; i++) {
    float angle = (TWO_PI / numSpokes) * i + spokeAngle;
    float x1 = cos(angle) * 5;
    float y1 = sin(angle) * 5;
    float x2 = cos(angle) * (r - 5);
    float y2 = sin(angle) * (r - 5);
    line(x1, y1, x2, y2);
  }
  
  // Hub
  fill(100);
  noStroke();
  circle(0, 0, 10);
  
  popMatrix();
}

void drawTwister(){
    pushMatrix();
    translate(x, y);
    rotate(frameCount * 0.02); // Make the whole twister spin
    
    // White base circle
    stroke(0);
    strokeWeight(3);
    fill(#FFFFFF);
    circle(0, 0, 120);
    
    // Draw colored dots in a circular pattern
    noStroke();
    float dotSize = 15;
    int numDots = 8; // More dots around the circle
    float radius = 45; // Distance from center
    
    for (int i = 0; i < numDots; i++) {
        float angle = (TWO_PI / numDots) * i;
        float dotX = cos(angle) * radius;
        float dotY = sin(angle) * radius;
        
        // Cycle through 4 colors
        if (i % 4 == 0) {
            fill(decoration.theme1Colors[0]); // Red
        } else if (i % 4 == 1) {
            fill(decoration.theme1Colors[1]); // Yellow
        } else if (i % 4 == 2) {
            fill(decoration.theme1Colors[2]); // Blue
        } else {
            fill(decoration.theme1Colors[3]); // Green
        }
        
        circle(dotX, dotY, dotSize);
    }
    
    // Center
    fill(0);
    circle(0, 0, 15);
    
    popMatrix();
}

    void drawJourney(){
        frameRate(30);

        noStroke();
        
        // Legs with walking motion
        pushMatrix();
        translate(x+65, y);
        rotate(sin(legAngle) * 0.3);
        fill(#8f1b0a);
        rect(-5, -5, 10, 55);
        popMatrix();
        
        pushMatrix();
        translate(x+35, y);
        rotate(sin(legAngle + PI) * 0.3);
        fill(#8f1b0a);
        rect(-5, -5, 10, 55);
        popMatrix();
        
        // Body triangle
        fill(#8f1b0a);
        triangle(x, y, x+50, y-100, x+100, y);
        
        // Dark red details
        fill(#72180e);
        triangle(x, y, x+15, y-30, x+30, y);
        triangle(x+35, y, x+50, y-30, x+65, y);
        triangle(x+70, y, x+85, y-30, x+100, y);
        
        // Belt
        fill(#f3c37a);
        quad(x, y, x+2, y-4, x+98, y-4, x+100, y);
        
        // Head
        fill(#8f1b0a);
        triangle(x+30, y-70, x+49, y-110, x+68, y-70);
        fill(#f3c37a);
        quad(x+30, y-70, x+32, y-74, x+66, y-74, x+68, y-70);

    }
}