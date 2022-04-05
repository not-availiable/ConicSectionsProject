public class Foci
{
  private float posX, posY, size;
  
  public Foci(float pX, float pY, float s)
  {
    posX = pX;
    posY = pY;
    size = s;
  }
  
  public void step(boolean isPositive, float speed)
  {
    posX += (isPositive ? 1 : -1) * speed;
    
    fill(0);
    ellipse(posX, posY, size, size);
    fill(255);
    
    if (posX < width + size && posX > -size) return;
    posX = posX > 0 ? -size : width + size;
  }
  
  public float getPosX() { return posX; }
  public float getPosY() { return posY; }
}
