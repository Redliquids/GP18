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
}

float tpf; // this was called frameTime in the walkthrough. Only one of them is necessary

void draw()
{
    long currentTime = millis();
    tpf = currentTime - currentTime;
    //tpf = (currentTime - time) * 0.001f; // we want this is seconds -> fraction of a second
    
  
  // do your drawing stuff...
  
  println("tpf: " + tpf);
} 
/*
You need to apply this to both pos updates and v updates. Ie (pseudo code)

pos = pos + v * tpf
v = v + a * tpf
*/
