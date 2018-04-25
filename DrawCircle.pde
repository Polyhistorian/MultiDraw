class DrawCircle {
  float kerroinX = 40;
  float kerroinY = 40;


  void draw() 
  {
    noFill();
    stroke(c, 255, 255, 255);
    float j = width;
    float jRepeat = 0f-kerroinX;
    boolean paired = false;
    while (j >= jRepeat)
    {
      float i = height;
      float iRepeat = 0f-kerroinY;
      while (i >= iRepeat)
      {
        if (paired)
        {
          if (dist(j, i, mouseX, mouseY) <= distance)
          {
            ellipse(j, i, kerroinX, kerroinY);
          }
          i-=kerroinY*2;
        }
        else
        {
          if (dist(j, i-kerroinY, mouseX, mouseY) <= distance)
          {
            ellipse(j, i-kerroinY, kerroinX, kerroinY);
          }
          i-=kerroinY*2;
        }
      }
      paired = !paired;
      j-=kerroinX;
      i-=kerroinY;
    }
    return; //<>//
  }
}
