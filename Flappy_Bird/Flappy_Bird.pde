Pipe myPipe1; //call in objects
Pipe myPipe2;
Pipe myPipe3;
Pipe myPipe4;
// place w here:  

int Yes = 0;
int playerX = 200;
public int playerY = 100;
int velocity = 1;
public int top = playerY - 50;
public int bottom = playerY + 50;


void setup() {
  size (1000, 600);
  background(0);
  fill(225);
  circle(playerX, playerY, 50);
  myPipe1 = new Pipe(225, 350, -300, 5);
  myPipe2 = new Pipe(225, 900, -400, 5);
  
}


void draw() {
  if (keyPressed) {
   if(key == 'w' ) {
     jump(-15);
     velocity = 1;
    }
  }
  background(0);
  playerY = playerY + velocity;
  velocity = velocity + 1;
  fill(225);
  circle(playerX, playerY, 50);
   top = playerY - 50;
   bottom = playerY + 50;
  myPipe1.display();
  myPipe1.move();
  myPipe1.collision();
  myPipe1.accelerate();
  myPipe2.display();
  myPipe2.move();
  myPipe2.collision();
  myPipe2.accelerate();
  
}

void jump(int bounce){
 playerY = playerY + bounce;
}
