int pointsCounter = 0;
int frame = 0;

void setup()
{
  size(660, 480);
  strokeWeight(2);
}

void draw()
{
  // remove background to keep chain of dots 
  //background(255);
  // sineCurve();
  sineAndCosCurve();
} 

// Points is used to set how many points on the sine curve you want. (Makes it longer)
void sineCurve()
{
  // Each 
  if(frame % 3 == 0){
    // I think i need to modify 
    point(frame*2.1, 240 + sin(frame * 0.04) * 100);
    println(frame);
    
    // Move to posX 0 when exiting frame.
    if(frame > 300)
    {
      frame = 0;
    }
  }
  frame++;
}
// Paints a dot in the sine curve each frame
void sineAndCosCurve(){
  if(frame % 5 == 0){
    point(frame*2, 240 + sin(frame * 0.04) * 100);
    point(frame*2, 240 + cos(frame * 0.04) * 100);
    
    // Move to posX 0 when exiting frame.
    if(frame > 320)
        frame = 0;
  }
        frame++;
        
}

  //for(int i = 0; i < 100; i += 5)
  //{
    //println(i);
     //line(width/2, height/2 , 200, sin(i*0.02)*height/2);
      // point(i * 0.5, sin(i) * 100);

      // we can use the sin value to cakculate Y
      // and use the cos value to calculate X
      // So basically: point(cos, sin); 
  //}
  
  
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
//}
