int ellipseX = 200;
int ellipseY = 200;


int frame = 0;


void setup()
{
  size(1080, 540);
  strokeWeight(1);
  frameRate(60);
  
}

void draw()
{
  background(64);
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
