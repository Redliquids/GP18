  int centerXPosition;
  int posYTopOfScreen;
  int posYBottomOfScreen;

void setup()
{
  centerXPosition = width/2;
  posYTopOfScreen = height - height;
  posYBottomOfScreen = height;
  
  size(1080, 540);
  println("centerXPosition = " + centerXPosition);
  println("posYTopOfScreen = " + posYTopOfScreen);
  println("posYBottomOfScreen = " + posYBottomOfScreen);
}

void draw()
{
  background(152, 0, 0, 0.1); // I like burgundy.
  stroke(105);
  strokeWeight(3.0);
  
  for(int y = 0; y <= width/2; y+=20)
  {
    line(0, y, y, height);
  }
}
