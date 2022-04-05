public class Conic
{
  private float centerX, centerY, leftVert1XPos, leftVert1YPos, rightVert2XPos, rightVert2YPos;
  private Foci fociA, fociB;
  
  public Conic(float cX, float cY, float fociSize, float vert1X, float vert1Y, float vert2X, float vert2Y)
  {
    centerX = cX;
    centerY = cY;
    
    leftVert1XPos = vert1X;
    leftVert1YPos = vert1Y;
    rightVert2XPos = vert2X;
    rightVert2YPos = vert2Y;
    
    fociA = new Foci(width*(float).5, centerY, fociSize); 
    fociB = new Foci(width*(float).5, centerY, fociSize);
  }
  
  public void step()
  {
    fociA.step(true, 5);
    fociB.step(false, 5);
  }
}
