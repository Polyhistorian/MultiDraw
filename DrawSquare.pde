class DrawSquare {
  float kerroinX = 40;
  float kerroinY = 40;

  void draw() 
  {
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
          if (variableHandler.drawPoints) drawPoints(j, i);
          else drawLines(j, i);
          i-=kerroinY*2;
        }
        else
        {
          if (variableHandler.drawPoints) drawPoints(j, i-kerroinY);
          else drawLines(j, i-kerroinY);
          i-=kerroinY*2;
        }
      }
      paired = !paired;
      j-=variableHandler.separation+10;
      i-=variableHandler.separation+10;
    }
  }

  void drawPoints(float xPoint, float yPoint) 
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) 
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint+40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint, yPoint+40);
      }
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint+40, yPoint, xPoint+40, yPoint+40);
      }
      if (dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint+40, xPoint+40, yPoint+40);
      }
    }
    else 
    {
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint+40, yPoint);
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint, yPoint+40);
      variableHandler.linePoints.draw(xPoint+40, yPoint, xPoint+40, yPoint+40);
      variableHandler.linePoints.draw(xPoint, yPoint+40, xPoint+40, yPoint+40);
    }
  }
  
  void drawLines(float xPoint, float yPoint) 
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) 
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint+40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint, yPoint+40);
      }
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint+40, yPoint, xPoint+40, yPoint+40);
      }
      if (dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint+40, xPoint+40, yPoint+40);
      }
    }
    else 
    {
      line(xPoint, yPoint, xPoint+40, yPoint);
      line(xPoint, yPoint, xPoint, yPoint+40);
      line(xPoint+40, yPoint, xPoint+40, yPoint+40);
      line(xPoint, yPoint+40, xPoint+40, yPoint+40);
    }
  }
}
