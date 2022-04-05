Conic a;

void setup()
{
  size(800, 800);
  a = new Conic(400, 400, 10, 300, 400, 500, 400);
}

void draw()
{
  background(255);
  a.step();
}
