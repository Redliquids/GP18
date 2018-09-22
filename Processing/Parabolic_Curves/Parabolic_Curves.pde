  int centerXPosition;
  int posYTopOfScreen;
  int posYBottomOfScreen;

void setup()
{
  centerXPosition = width/2;
  posYTopOfScreen = height - height;
  posYBottomOfScreen = height;
  
  size(1080, 540);
  //println("centerXPosition = " + centerXPosition);
  //println("posYTopOfScreen = " + posYTopOfScreen);
  //println("posYBottomOfScreen = " + posYBottomOfScreen);
}

void draw()
{
  background(152, 0, 0, 0.1); // I like burgundy.
  stroke(0);
  strokeWeight(3.0);
  
  for(int y = 0; y <= width/2; y+=20)
  {
    stroke(0);
    println("y % 3: " + y % 3);
    if(y % 3 == 0)
    {
      stroke(255);
    }
    line(0, y, y, height);
  }
}
