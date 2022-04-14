Conic a;

private boolean paused = false;
static public boolean reverse = false;

void setup()
{
  size(800, 800);
  a = new Conic(400, 400, 1000);
}

void draw()
{
  if (paused) return;
  
  background(0);
  a.step(reverse);
}

void keyPressed()
{
  switch(key)
  {
    case 'p':
      paused = true;
    break;
    case 'r':
      reverse = true;
    break;
  }
}

void keyReleased()
{
  switch(key)
  {
    case 'p':
      paused = false;
    break;
    case 'r':
      reverse = false;
    break;
  }
}
