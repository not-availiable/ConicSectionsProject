Conic a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;

private boolean paused = false;
static public boolean reverse = false;

void setup()
{
  size(800, 800);
  a = new Conic(400, 0, 100, 100, 0, 0, 1000);
  b = new Conic(400, 100, 100, 0, 100, 0, 1000);
  c = new Conic(400, 200, 100, 90, 40, 100, 1000);
  d = new Conic(400, 300, 100, 100, 0, 0, 1000);
  e = new Conic(400, 400, 100, 0, 100, 0, 1000);
  f = new Conic(400, 500, 100, 90, 40, 100, 1000);
  g = new Conic(400, 600, 100, 100, 0, 0, 1000);
  h = new Conic(400, 700, 100, 90, 40, 100, 1000);
  i = new Conic(400, 800, 100, 100, 0, 0, 1000);
  
}

void draw()
{
  if (paused) return;
  
  background(0);
  a.step(reverse, true, .025);
  b.step(reverse, false, .035);
  c.step(reverse, true, .045);
  d.step(reverse, false, .055);
  e.step(reverse, true, .065);
  f.step(reverse, false, .075);
  g.step(reverse, true, .085);
  h.step(reverse, false, .095);
  i.step(reverse, true, .105);
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
