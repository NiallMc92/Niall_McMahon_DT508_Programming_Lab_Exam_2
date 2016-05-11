// Niall McMahon
// c15745869
// DT508 Programming Lab Test 2

Plane plane;

void setup()
{
  size(500, 500);
  plane = new Plane(0, 25); 
  skyX = 0;
  skyY = 0;
  skyW = width;
  skyH = height * 0.5f;
}

void draw()
{
  background(0, 255, 0);
  sky();
  plane.Render();
  plane.Update();
}