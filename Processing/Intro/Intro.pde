void setup()
{
  size(640, 480);
}

void draw()
{
  background(152, 0, 0, 0.1); // I like burgundy.
  stroke(105);
  strokeWeight(8.0);
  // V
  line(30, 30, 90, 200);
  line(140, 30, 90, 200);
  // i
  line(180, 68, 180, 200);
  quad(180, 40, 180, 50, 180, 50, 180, 55);
  noFill();
  
  //e
  rect(349, 196, 94, 0);
  line(350,110, 400, 110);
  quad(350, 30, 350, 199, 350, 30, 435, 30);
  
  // c Animation Doesn't work right now.
  arc(275, 145, 107, 110, 0.6, 5.8, 3);
  
    println("inside while loop");
    delay(100);
    arc(275, 145, 107, 110, 0.6, 5.8, 3);
    delay(100);
    arc(275, 145, 107, 110, 0.5, 5.9, 3);
    delay(100);
    arc(275, 145, 107, 110, 0.4, 6.0, 3);
    delay(100);
    arc(275, 145, 107, 110, 0.3, 6.1, 3);
    delay(100);
    arc(275, 145, 107, 110, 0.2, 6.2, 3);
    delay(100);
    arc(275, 145, 107, 110, 0.1, 6.3, 3);
}