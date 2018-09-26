float speed = 1; // constant velocity
float a = 1; // constant acceleration
float tpf; // time per frame in seconds. Used for movement.
float time;

PVector posVector;
PVector velocityVector;

void setup()
{
  frameRate(144);
  size(660, 480);
  strokeWeight(2);
  
  posVector = new PVector(width/2, height/2);
  velocityVector = new PVector (random(-1, 1), random(-1, 1));
}

void draw()
{
  background(64);
  // The movement doesn't work quite right with fps changes...
  bouncyBall();
} 

public void bouncyBall()
{
  float currentTime = millis();   
  tpf = (currentTime - time) * 0.001;
  speed = speed + tpf;
  // println("speed: " + speed);
  posVector.x = posVector.x + (velocityVector.x * speed + a);
  posVector.y = posVector.y + (velocityVector.y * speed + a);
  
  //println("posVector.y: " + posVector.y);
  if (posVector.y > height) {
    velocityVector.y =  - velocityVector.y; // Reverse direction
    velocityVector.y = (velocityVector.y * 0.7f); // making the ball loose force
    
    // posVector.y does manage to get several pixed out of frame. 
    // Therefore i need to set it to be height of frame after we reverse the movement direction. 
    // Otherwise the code keeps changing direction. 
    posVector.y = height; 
  }
  else if (posVector.y < 0) {
    // reverse velocityVector
    velocityVector.y =- velocityVector.y;
    velocityVector.y = (velocityVector.y * 0.7f);
    posVector.y = 0;
  }

  if(posVector.x > width){
    // set posVector.x = 0
    posVector.x = 0;
  }
  else if (posVector.x < 0){
    // set posVector.x = width
    posVector.x = width;
  }
  
  //ToDo:
  // Fix fps based movement.
  
  //println();
  ellipse(posVector.x, posVector.y, 20, 20);
  time = currentTime;
}
