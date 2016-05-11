// Niall McMahon
// c15745869
// DT508 Programming Lab Test 2

Plane plane;
ArrayList<Clouds> clouds = new ArrayList<Clouds>();
ArrayList<Bomb> bomb = new ArrayList<Bomb>();
boolean dropped;

void setup()
{
  size(500, 500);
  plane = new Plane(0, 25);
  skyX = 0;
  skyY = 0;
  skyW = width;
  skyH = height * 0.5f;
  dropped = false;
}

void draw()
{
  background(0, 255, 0);
  sky();
  
  for (int i = 0 ; i < 5 ; i ++)
  {
    Clouds p = new Clouds(random(0, width), random(0, (height / 2) - 100));
    clouds.add(p);
    clouds.get(i).Render();
    clouds.get(i).Update();
  }
  
  plane.Render();
  plane.Update();
  
  if(keyPressed)
  {
    if(key == ' ')
    {
      dropped = true;
    }
  }
  
  if(dropped)
  {
    Bomb p = new Bomb(plane.pos.x, plane.pos.y);
    bomb.add(p);
    bomb.get(0).Render();
    bomb.get(0).Update();
  }
}

void keyPressed()
{

}