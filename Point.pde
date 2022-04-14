public class Point
{
  //coneAngle is the 'spread' of the cone
  //coneSegment rotation is the rotation of a line about the cone
  //coneRotation is the rotation of the collection of lines that make up the cone
  private float centerX, centerY, centerZ, coneAngle, coneSegmentRotation;
  private float coneRotation = 0;
  
  
  public Point(float cX, float cY, float cZ, float cA, float cSR)
  {
    centerX = cX;
    centerY = cY;
    centerZ = cZ;
    coneAngle = cA;
    coneSegmentRotation = cSR;
  }
  
  public void stepConeRotation()
  {
    coneRotation+=.0025;
  }
  
  /*
   Important note: centerZ doesn't represent the actual center of the cone (that is always (0, 0, 0)).
   It actually represents the distance under the origin that the x and y are being evaluated at
   This is important because the center of the cone needs to not move during the rotation which means it is simply easier 
   to move the plane down than it is to move the cone up
  */
  //Important note 2: centerX and centerY refer to the conics position on the screen and have no relation to the graph
  public void solve()
  {
    float t = getParameter();

    ellipse(
    /*x*/centerX + ((cos(coneRotation) * t * cos(coneSegmentRotation)) + (sin(coneRotation) * tan(PI/coneAngle) * t)), 
    /*y*/centerY + (t * sin(coneSegmentRotation)), 
    /*size*/2, 
    /*size*/2);
  }
  
  public float getParameter() { return (-1*centerZ) / (((-1 * sin(coneRotation)) * cos(coneSegmentRotation)) + (cos(coneRotation) * tan(PI/coneAngle))); }
  
  public float getX() { return centerX + ((cos(coneRotation) * getParameter() * cos(coneSegmentRotation)) + (sin(coneRotation) * tan(PI/coneAngle) * getParameter())); }
  public float getY() { return centerY + (getParameter() * sin(coneSegmentRotation)); } 
}
