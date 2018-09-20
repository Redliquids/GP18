int ellipseX = 250;
int ellipseY = 200;

float speed = 1;
float a = 0.1;
float tpf;
float time;

PVector position;
PVector velocity;

int frame = 0;


void setup()
{
  size(1080, 540);
  strokeWeight(1);
  frameRate(144);
 position = new PVector(width/2, height/2);
 velocity = new PVector (random(-1, 1), random(-1, 1));
}

void draw()
{
  background(64);
  //circleChaseMouse();
  //bouncyBall();
  
  // Time passed since start of program in ms.
  long currentTime = millis(); 
  tpf = currentTime * 0.001f;
  speed = speed + a * tpf;
  
  // println(speed);
  
  position.y = position.y + (velocity.y * speed) * tpf;
  position.x = position.x + (velocity.x * speed) * tpf;
  
  ellipse(position.x, position.y, 20, 20);
  //println("posX: "+position.x);
  //println("posY: "+position.y);
  
  if (position.x > width || position.x <0){
      velocity.x = - velocity.x;
    }
  if (position.y > height || position.y <0){
      velocity.y= -velocity.y;
    }      
}

























public void circleChaseMouse(){
  ellipse(ellipseX, ellipseY, 20, 20);
  
  if(ellipseX > mouseX){
      ellipseX--;
      addFrame();
      }
  else if(ellipseX < mouseX){
      ellipseX++;
      addFrame();
      }
      
    if(ellipseY > mouseY){
      ellipseY--;
      addFrame();
      }
    else if(ellipseY < mouseY){
      ellipseY++;
      addFrame();
      }
}

public void addFrame(){
  frame++;
}
