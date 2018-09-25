/// Full disclosure. I took a lot of help/code from Vidar 
/// and tried to understand and use it.

int ellipseX = 250;
int ellipseY = 200;

float speed = 1;
float a = 0.1;
float tpf;
//float time;

PVector posVector;
PVector velocityVector;

int frame = 0;

void setup()
{
  size(1080, 540);
  strokeWeight(1);
  frameRate(144);
  posVector = new PVector(width/2, height/2);
  velocityVector = new PVector (random(-1, 1), random(-1, 1));
}

void draw()
{
  background(64);
  //circleChaseMouse();
  bouncyBall();
}

public void bouncyBall()
{
  long currentTime = millis(); 
  tpf = currentTime * 0.001f;
  println("tpf: " + tpf);
  speed = speed + tpf;
  
  // println(speed);
  
  posVector.y = posVector.y + (velocityVector.y * speed + a) ;
  posVector.x = posVector.x + (velocityVector.x * speed + a) ;
  
  ellipse(posVector.x, posVector.y, 20, 20);
  
  if (posVector.y > height )
  {
    velocityVector.y = - velocityVector.y; // Reverse direction
    velocityVector.y = (velocityVector.y * 0.9f); // making the ball loose force
    
    // posVector.y does manage to get several pixed out of frame. 
    // Therefore i need to set it to be height of frame after we reverse the movement direction. 
    // Otherwise the code keeps changing direction. 
    posVector.y = height; 
  }
  else if (posVector.y < 0)
  {
  velocityVector.y = - velocityVector.y; 
    velocityVector.y = (velocityVector.y * 0.9f);
  posVector.y = 0; 
  }
  if (posVector.x > width )
  {
    velocityVector.x = - velocityVector.x;
    velocityVector.x = (velocityVector.x*0.9f);
    posVector.x = width;
  }
  else if (posVector.x < 0)
  {
  velocityVector.x = - velocityVector.x;
  velocityVector.x = (velocityVector.x * 0.9f);
  posVector.x = 0;
  }
  
    // Constant acceleration code but shorter...
    /*
    if (posVector.x > width || posVector.x <0){
      velocityVector.x = - velocityVector.x;
      velocityVector.y = (velocityVector.y * 0.9f);
    }
    if (posVector.y > height || posVector.y <0){
      velocityVector.y= -velocityVector.y;
      velocityVector.y = (velocityVector.y * 0.9f);
    } 
    */
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
