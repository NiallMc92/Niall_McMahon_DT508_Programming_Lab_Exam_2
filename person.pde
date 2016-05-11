class Person
{
  
  PVector pos;
  int headRadius;
  int bodyW;
  int bodyH;
  int armW;
  int armH;
  int legW;
  int legH;
  PVector forward;
  
  Person (float personX, float personY)
  {
    pos = new PVector(personX, personY);
    headRadius = 30;
    bodyW = 10;
    bodyH = 30;
    armW = 1;
    armH = 3;
    legW = 1;
    legH = 3;
  }
  
  void Update()
  {
    
  }
  
  void Render()
  {
    stroke(0);
    fill(255, 150, 0);
    pushMatrix(); 
    translate(pos.x, pos.y);
    ellipse(0, 0, headRadius, headRadius); 
    rect(-5, 20, bodyW, bodyH);
    line(-5, 30, -25, 30);
    line(5, 30, 25, 30);
    line(-2, 50, -2, 80);
    line(2, 50, 2, 80);
    popMatrix();
  }
}