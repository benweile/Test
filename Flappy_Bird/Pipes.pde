//define class Pipe
class Pipe {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  
  Pipe(color tempC, float tempXpos, float tempYpos, float tempXspeed){ //Constructor
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  
  public void display() { //show pipe
  fill(c);
  rect(xpos, ypos, 40, 500);
  rect(xpos, ypos + 720, 40, 500);
  
  }
  
  public void move() { //move pipe
  
   if (xpos > -40){
     xpos = xpos - xspeed;
    }
   else {
     ypos = random(-400, -200);
     xpos = 1000;
   }
  }  
  
  public void collision(){
    if (xpos <= playerX && (xpos + 50) >= (playerX + 10)) {
      if (top < ypos + 460){
        exit();
      }
      else if (bottom > ypos + 780){
        exit();
      }
    }
  }
  
  public void accelerate(){
    xspeed = xspeed + 0.01;
  }
}
