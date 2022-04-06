public class Point
{
  private float centerX, centerY, coneAngle, coneSegmentRotation;
  private float coneRotation = 0;
  
  public Point(float cX, float cY, float cA, float cSR)
  {
    centerX = cX;
    centerY = cY;
    coneAngle = cA;
    coneSegmentRotation = cSR;
  }
}
