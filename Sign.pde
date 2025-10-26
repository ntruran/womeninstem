class Sign {
  float x, y;
  boolean isOpen, toggle;
  
  Sign(float x, float y) {
    this.x = x;
    this.y = y;
    isOpen = true ;
    toggle = true ;
  }
  
  void display() {
    if(isOpen) open();
    else if (!isOpen) closed();
  }

  void open(){
    noStroke();
    fill(#323c40);
    rect(x+4,y+4,65,30,10);
    fill(#307843);
    rect(x,y,65,30,10);
    stroke(#ffffff);
    strokeWeight(3);
    noFill();
    rect(x,y,55,20,5);
    fill(255);
    text.signText("OPEN",455,464);
  }
  void closed(){
    noStroke();
    fill(#323c40);
    rect(x+4,y+4,65,30,10);
    fill(#802029);
    rect(x,y,65,30,10);
    stroke(#ffffff);
    strokeWeight(3);
    noFill();
    rect(x,y,55,20,5);
    fill(255);
    text.signText("CLOSED",449,464);
  }

    void isMouseInside() {
      if (toggle) {
      toggle = false;
          if (mouseX > 440 && mouseX < 500 && mouseY > 445 && mouseY < 490) {
            isOpen = false;
      }
    } else {
      toggle = true;
          if (mouseX > 440 && mouseX < 500 && mouseY > 445 && mouseY < 490) {
            isOpen = true;
    }
    }
  }
}
