Conic a;

void setup()
{
  size(800, 800);
  a = new Conic(400, 400, 1000);
}

void draw()
{
  background(0);
  a.step();
}
