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
  println("speed: " + speed);
  posVector.x = posVector.x + (velocityVector.x * speed + a);
  posVector.y = posVector.y + (velocityVector.y * speed + a);
  
  //ToDo:
  // Reverse Velocity when enterint top/bottom of screen.
  // Make the ball come out from the left of the screen when it exits on the right.
  // Fix fps based movement.
  
  //println();
  ellipse(posVector.x, posVector.y, 20, 20);
  time = currentTime;
}
