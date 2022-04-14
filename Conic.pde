public class Conic
{
  private float centerX, centerY;
  private int detail;
  private Point[] points;
  
  public Conic(float cX, float cY, int d)
  {
    centerX = cX;
    centerY = cY;
    
    detail = d;
    
    points = new Point[detail];
    
    generatePoints();
  }
  
  public void step()
  {
    float counter = 0;
    for (int i = 0; i < points.length; i++)
      points[i].stepConeRotation();
    for(int i = 0; i < points.length; i++)
    {
      counter-=.25;
      
      stroke(255+counter, 0, 0-counter);
      fill(255+counter, 0, 0-counter);
      points[i].solve(); 
    }
      
    generateShape();
  }
  
  private void generatePoints()
  {
    for (int i = 0; i < points.length; i++)
    {
      points[i] = new Point(centerX, centerY, 50, 3.4, ((2*PI/detail)*i));
    }
  }
  
  private void generateShape()
  {
    fill(0, 100, 0);
    beginShape();
    for (int i = 0; i < points.length; i++)
    {
      if (points[i].getX() < centerX)
         vertex(points[i].getX(), points[i].getY());
    }
    endShape(CLOSE);
    
    beginShape();
    for (int i = 0; i < points.length; i++)
    {
      if (points[i].getX() >= centerX)
         vertex(points[i].getX(), points[i].getY());
    }
    endShape(CLOSE);
  }
}
