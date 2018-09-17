  int y = 40;
  int x = 49;

void setup()
{
  size(1080, 540);
}

void draw()
{
  strokeWeight(2);

  for(int i = 0; i < 100; i += 5)
  {
    println(i);
    line(width/2, height/2 , 200, sin(i*0.02)*height/2);
    // point(i * 0.5, sin(i) * 100);
      // we can use the sin value to cakculate Y
      // and use the cos value to calculate X
      // So basically: point(cos, sin); 
  }
  
  
  //line(0, y, x, y);
  //line(0, y, x, 0);
  //line(x, 0, x, y);
  // Now to figure out length of line 3...
  // Adjacent = 49
  // Opposite = 40 
  
  // Tan
  // Opposite 40 / Adjacent 49 = 0,8163265306122449
  // The answer is Hypotenuse Side OR Adjacent Side * 0,8163265306122449?

  // So you take the 2 lines and constantly change the Y value
  // Repetitively Calculate the Sin 

  // y = Opposite/Hypotenus of x
}
