class CirclePoints
{
  void draw(float x, float y, float radius)
  {
    if (radius > 0)
    {
      float xStart = x-radius;
      float xEnd = x+radius;
      float yStart = y-radius;
      float yEnd = y+radius;
      float yCurrent = yStart;
      while (yCurrent <= yEnd) //<>//
      {
        float xCurrent = xStart;
        while (xCurrent <= xEnd)
        {
          if (dist(xCurrent, yCurrent, x, y) == radius)
          {
            point(xCurrent, yCurrent);
          }
          xCurrent++;
        }
        yCurrent++; //<>//
      }
    }
  }
}
