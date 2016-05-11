class Plane
{
  
  int planeW;
  int halfPlaneW;
  int planeH;
  PVector pos;
  PVector forward;
  float windowX;
  float windowY;
  int windowW;
  int windowH;
  float speed;
  
  Plane(float planeX, float planeY)
  {
    planeW = 100;
    planeH = 20;
    halfPlaneW = 60;
    pos = new PVector(planeX, planeY);
    forward = new PVector (1, 0);
    windowX = pos.x + 10;
    windowY = pos.y + 5;
    windowW = 5;
    windowH = 5;
    speed = 3;
  }
  
  void Update()
  {
    pos.x += speed;
    if(pos.x > width)
    {
      pos.x = 0 - planeW;
    }
  }
  
  void Render()
  {
    stroke(200, 200, 200);
    fill(200, 200, 200);
    strokeWeight(1);
    pushMatrix(); 
    translate(pos.x, pos.y);
    rect(0, 20, planeW, planeH); 
    rect(45, 0, planeH, halfPlaneW);
    popMatrix(); 
  }
}