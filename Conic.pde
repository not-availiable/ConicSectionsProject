public class Conic
{
  private float centerX, centerY, centerZ, red, green, blue;
  private int detail;
  private Point[] points;
  
  public Conic(float cX, float cY, float cZ, int r, int g, int b, int d)
  {
    centerX = cX;
    centerY = cY;
    centerZ = cZ;
    
    red = r;
    green = g;
    blue = b;
    
    detail = d;
    
    points = new Point[detail];
    
    generatePoints();
  }
  
  public void step(boolean reverse, boolean goesLeft, float speed)
  {
    for (int i = 0; i < points.length; i++)
      points[i].stepConeRotation(reverse, goesLeft, speed);
    
      
    generateShape();
  }
  
  private void generatePoints()
  {
    for (int i = 0; i < points.length; i++)
    {
      points[i] = new Point(centerX, centerY, centerZ, 3.4, ((2*PI/detail)*i));
    }
  }
  
  
  private void generateShape()
  {
    int bestPointG = 0;
    int bestPointL = 0;
    
    fill(red, green, blue);
    stroke(red, green, blue);
    beginShape();
    for (int i = 0; i < points.length; i++)
    {
      
      //test points
      /*
      if (i == 100)
        println(points[i].getX(), points[i].getY());
      if (i == 200)
        println(points[i].getX(), points[i].getY());
      if (i == 300)
        println(points[i].getX(), points[i].getY());
      */
      
      if (points[i].getX() < centerX)
      {
         vertex(points[i].getX(), points[i].getY());
         if (bestPointL == 0 && points[i].getY() < 400.05 && points[i].getY() > 399.95)
         {
           //println(points[i].getX(), points[i].getY());
           bestPointL++;
         }
      }
    }
    endShape(CLOSE);
    
    
    beginShape();
    for (int i = 0; i < points.length; i++)
    {
      if (points[i].getX() >= centerX)
      {
        vertex(points[i].getX(), points[i].getY());
        if (bestPointG == 0 && points[i].getY() < 400.05 && points[i].getY() > 399.95)
        {
          //println(points[i].getX(), points[i].getY());
          bestPointG++;
        }
       }
     }
    endShape(CLOSE);
  }
}
