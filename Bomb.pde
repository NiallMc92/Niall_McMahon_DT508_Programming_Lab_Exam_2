class Bomb
{
  PVector pos;
  PVector forward;
  PVector stop;
  int bombW;
  int bombH;
  float speed;
  float droppedPos;
  
  Bomb(float bombX, float bombY)
  {
    pos = new PVector (bombX, bombY);
    forward = new PVector(0, 3);
    stop = new PVector(0, 0);
    bombW = 15;
    bombH = 15;
  }
  
  void Update()
  {
    
    if(pos.y < (height / 2) + 100)
    {
      pos.add(forward);
    }
    else if(pos.y >= (height / 2) + 100)
    {
      landed = true;
      pos.add(stop);
    }
  }
  
  void Render()
  {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    pushMatrix(); 
    translate(pos.x, pos.y);
    rect(50, 30, bombW, bombH); 
    popMatrix();
  }
}