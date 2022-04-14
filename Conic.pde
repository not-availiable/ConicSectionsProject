public class Conic
{
  private float centerX, centerY, stepAmount;
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
    for (int i = 0; i < points.length; i++)
    {
      points[i].stepConeRotation();
    }
    for(int i = 0; i < points.length; i++)
    {
      points[i].solve(); 
    }
  }
  
  private void generatePoints()
  {
    for (int i = 0; i < points.length; i++)
    {
      points[i] = new Point(centerX, centerY, 50, 3.4, (2*PI/detail)*i);
    }
  }
}
