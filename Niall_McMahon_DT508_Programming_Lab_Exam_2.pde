// Niall McMahon
// c15745869
// DT508 Programming Lab Test 2

Plane plane;
Person person;
ArrayList<Clouds> clouds = new ArrayList<Clouds>();
ArrayList<Bomb> bomb = new ArrayList<Bomb>();
boolean dropped;
boolean landed;
boolean keys[] = new boolean [2000];

void setup()
{
  size(500, 500);
  plane = new Plane(0, 25);
  person = new Person(50, width / 2 + 100);
  skyX = 0;
  skyY = 0;
  skyW = width;
  skyH = height * 0.5f;
  dropped = false;
  landed = false;
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

    if(keys[0])
    {
      dropped = true;
    }
  
  if(dropped)
  {
    Bomb p = new Bomb(plane.pos.x, plane.pos.y);
    bomb.add(p);
    bomb.get(0).Render();
    bomb.get(0).Update();
  }
  
  if(landed)
    {
      person.forward = new PVector(1, -1);
      person.pos.add(person.forward);
    }
  
  person.Render();
  person.Update();
  
}

void keyPressed ()
{
  if(key == ' ')
  {
    keys[0] = true;
  }
}

void keyReleased ()
{
  if(key == ' ')
  {
    keys[0] = false;
  }
}