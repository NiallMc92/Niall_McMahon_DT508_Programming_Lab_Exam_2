class Clouds 
{
  PVector pos;
  PVector forward;
  int radiusW;
  int radiusH;
  float speed;
  
  Clouds(float cloudX, float cloudY)
  {
    pos = new PVector (cloudX, cloudY);
    forward = new PVector(1, 0);
    radiusW = 50;
    radiusH = 25;
    speed = 2;
  }
  
  void Update()
  {
    pos.x -= speed;
    if(pos.x < 0 - radiusW)
    {
      pos.x = width + radiusW;
    }
  }
  
  void Render()
  {
    stroke(255);
    fill(255);
    pushMatrix(); 
    translate(pos.x, pos.y);
    ellipse(0, 0, radiusW, radiusH + 15); 
    ellipse(15, 0, radiusW, radiusH);
    ellipse(-15, 0, radiusW, radiusH);
    popMatrix(); 
  }
}