class Door {
  float x, y;

  Door(float xD, float yD){
    x = xD;
    y = yD;
  }

  void display(){
    door(x+10,y+225);
    door(x+113,y+225);
  }

  // --- your door() stays the same, uses doorWidth ---

void door(float xD, float yD){
  // doorWidth goes from 95 (closed) to 0 (open)
  
  fill(#9B5551);
  stroke(#552526);
  strokeWeight(5);
  quad(xD,yD,xD+100,yD,xD+100,yD+210,xD,yD+210);
  noStroke();
  
  //door decoration
  fill(#552526);
  xD+=5;
  quad(xD+10,yD+15,xD+100-20,yD+15,xD+100-23,yD+18,xD+13,yD+18);
  quad(xD+100-20,yD+15,xD+100-20,yD+40,xD+100-23,yD+37,xD+100-23,yD+18);
  fill(#E9A7A7);
  quad(xD+100-20,yD+40,xD+10,yD+40,xD+13,yD+37,xD+100-23,yD+37);
  quad(xD+13,yD+37,xD+10,yD+40,xD+10,yD+15,xD+13,yD+18);
  
  //glass
  fill(#1c1c1c);
  quad(xD+11,yD+50,xD+100-21,yD+50,xD+100-21,yD+143,xD+11,yD+143);
  
  yD+=70;
  fill(#552526);
  quad(xD+10,yD+85,xD+100-20,yD+85,xD+100-23,yD+88,xD+13,yD+88);
  quad(xD+100-20,yD+85,xD+100-20,yD+110,xD+100-23,yD+107,xD+100-23,yD+88);
  fill(#E9A7A7);
  quad(xD+100-20,yD+110,xD+10,yD+110,xD+13,yD+107,xD+100-23,yD+107);
  quad(xD+13,yD+107,xD+10,yD+110,xD+10,yD+85,xD+13,yD+88);
}
}