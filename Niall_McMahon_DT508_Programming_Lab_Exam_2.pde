// Niall McMahon
// c15745869
// DT508 Programming Lab Test 2

Plane plane; // plane class
Person person; // person class
ArrayList<Clouds> clouds = new ArrayList<Clouds>(); // array of clouds
ArrayList<Bomb> bomb = new ArrayList<Bomb>(); // array of bombs
boolean dropped; // boolean for bomb being dropped
boolean landed; // bolean for bomb landing
boolean keys[] = new boolean [2000]; // boolean of keys
float updatePosition; // position of bomb

void setup()
{
  size(500, 500); // size of the screen
  plane = new Plane(0, 25); // plane that is spawned
  person = new Person(50, width / 2 + 100); // person that is spawned
  skyX = 0; // the sky x coordinate
  skyY = 0; // the sky y coordinate
  skyW = width; // sky width
  skyH = height * 0.5f; // sky height
  dropped = false; 
  landed = false;
}

void draw()
{
  background(0, 255, 0);
  sky();
  
  for (int i = 0 ; i < 5 ; i ++) // draw the clouds
  {
    Clouds p = new Clouds(random(0, width), random(0, (height / 2) - 100));
    clouds.add(p);
    clouds.get(i).Render();
    clouds.get(i).Update();
  }
  
  plane.Render(); // render the plane
  plane.Update();

    if(keys[0] && dropped == false)
    {
      dropped = true;
    }
  
  if(dropped)
  {
    Bomb p = new Bomb(plane.pos.x, plane.pos.y); // add a new bomb
    bomb.add(p);
    bomb.get(0).Render();
    bomb.get(0).Update();
    updatePosition = bomb.get(0).pos.x; 
  }
  
  if(landed)
    {
      person.forward = new PVector(2, 0);
      person.pos.add(person.forward);
    }
  
  if(person.pos.x > updatePosition + 50) // if the person is over the bomb
  {
    person.pos.x = 50;
    person.pos.y = width / 2 + 100;
    bomb.remove(0);
    landed = false;
    dropped = false;
  }
  
  person.Render(); // render the person
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