class Bomb
{
  PVector pos;
  PVector forward;
  int bombW;
  int bombH;
  float speed;
  
  Bomb(float bombX, float bombY)
  {
    pos = new PVector (bombX, bombY);
    forward = new PVector(0, 1);
    bombW = 15;
    bombH = 15;
  }
  
  void Update()
  {
    pos.add(forward);
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