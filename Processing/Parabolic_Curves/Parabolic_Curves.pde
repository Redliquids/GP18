  int centerXPosition;
  int posYTopOfScreen;
  int posYBottomOfScreen;
  
void setup()
{
  centerXPosition = width/2;
  posYTopOfScreen = height - height;
  posYBottomOfScreen = height;
  
  size(1080, 540);

}

void draw()
{
  background(128, 0, 0, 0.1); // I like burgundy.
  strokeWeight(2.0);
  
  
  for(int y = 0; y <= width/2; y+=20)
  {    
    stroke(128);
    line(0, y, y, height);
    
    if(y%3 == 0)
    {
      stroke(0);
      line(0, y, y, height);
    }
  }
}
