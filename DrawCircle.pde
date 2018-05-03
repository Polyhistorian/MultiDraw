class DrawCircle {
  float kerroinX = 40;
  float kerroinY = 40;


  void draw() 
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
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
          if (dist(j, i, mouseX, mouseY) <= variableHandler.mouseDistance)
          {
            ellipse(j, i, variableHandler.size, variableHandler.size);
          }
          i-=variableHandler.separation*2;
        }
        else
        {
          if (dist(j, i-kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance)
          {
            ellipse(j, i-kerroinY, variableHandler.size, variableHandler.size);
          }
          i-=variableHandler.separation*2;
        }
      }
      paired = !paired;
      j-=variableHandler.separation;
    } //<>//
  }
}
