float tpf; // time per frame in seconds.
float time; 

int posY; // position of ball

int v = 1; // constant velocity
int a = 1; // constant acceleration

//update loop:
//posY = posY + 1;

// update loop same as before, but:

//v = v + a; // v increases by acceleration

void setup()
{
  size(660, 480);
  strokeWeight(2);
  frameRate(144);
}

posVector = new PVector(width/2, height/2);
velocityVector = new PVector(0,1);

void draw()
{
  float currentTime = millis();   tpf = (currentTime - time) * 0.001;
  // *0.001 is needed to turn value in to x.xxx seconds. Otherwise we get millisec values.
    
  
   // do your drawing stuff...
  bouncyBall();

  time = currentTime;
  println("tpf: " + tpf);
  println("Ms since start of program: " + time);
} 
/*
You need to apply this to both pos updates and v updates. Ie (pseudo code)

pos = pos + v * tpf
v = v + a * tpf
*/

public void bouncyBall()
{
  ellipse();
}
