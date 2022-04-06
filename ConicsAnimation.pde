Conic a;

void setup()
{
  size(800, 800);
  a = new Conic(400, 400, 10, 3.4);
}

void draw()
{
  background(255);
  a.step();
}
