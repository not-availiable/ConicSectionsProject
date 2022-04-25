Conic a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;

private boolean paused = false;
static public boolean reverse = false;

void setup()
{
  size(800, 800);
  a = new Conic(400, 0, 100, 100, 0, 0, 1000);
  b = new Conic(400, 100, 100, 0, 100, 0, 1000);
  c = new Conic(400, 200, 100, 90, 40, 100, 1000);
  d = new Conic(400, 300, 100, 200, 105, 0, 1000);
  e = new Conic(400, 400, 100, 48, 100, 200, 1000);
  f = new Conic(400, 500, 100, 200, 200, 0, 1000);
  g = new Conic(400, 600, 100, 0, 0, 102, 1000);
  h = new Conic(400, 700, 100, 90, 40, 100, 1000);
  i = new Conic(400, 800, 100, 100, 0, 0, 1000);
  
}

void draw()
{
  if (paused) return;
  
  background(0);
  a.step(reverse, true, .025);
  b.step(reverse, true, .035);
  c.step(reverse, true, .045);
  d.step(reverse, true, .055);
  e.step(reverse, true, .065);
  f.step(reverse, true, .055);
  g.step(reverse, true, .045);
  h.step(reverse, true, .035);
  i.step(reverse, true, .025);
  
  stroke(255);
  fill(255);
  
  //y axis
  line(width/2, 0, width/2, height);
  text("800", 400, 0);
  line(380, 0, 420, 0);
  text("700", 400, 100);
  line(380, 100, 420, 100);
  text("600", 400, 200);
  line(380, 200, 420, 200);
  text("500", 400, 300);
  line(380, 300, 420, 300);
  text("400", 400, 400);
  text("300", 400, 500);
  line(380, 500, 420, 500);
  text("200", 400, 600);
  line(380, 600, 420, 600);
  text("100", 400, 700);
  line(380, 700, 420, 700);
  text("0", 400, 800);
  line(380, 800, 420, 800);
  
  //x axis
  line(0, height/2, width, height/2);
  text("0", 0, 400);
  line(0, 380, 0, 420);
  text("100", 100, 400);
  line(100, 380, 100, 420);
  text("200", 200, 400);
  line(200, 380, 200, 420);
  text("300", 300, 400);
  line(300, 380, 300, 420);
  text("400", 400, 400);
  text("500", 500, 400);
  line(500, 380, 500, 420);
  text("600", 600, 400);
  line(600, 380, 600, 420);
  text("700", 700, 400);
  line(700, 380, 700, 420);
  text("800", 800, 400);
  line(800, 380, 800, 420);
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
