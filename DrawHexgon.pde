class DrawHexagon {
  float kerroinX = ((((4f*sqrt(65f))/13f)*8f)/40)*variableHandler.size;
  float kerroinY = ((((4f*sqrt(65f))/13f)*14f)/40)*variableHandler.size;


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
          if (variableHandler.drawPoints)
          {
            if (variableHandler.drawNoise) drawPointsNoise(j, i);
            else drawPoints(j, i);
          }
          else drawLines(j, i);
          i-=kerroinY*2;
        }
        else
        {
          if (variableHandler.drawPoints)
          {
            if (variableHandler.drawNoise) drawPointsNoise(j, i-kerroinY);
            else drawPoints(j, i-kerroinY);
          }
          else drawLines(j, i-kerroinY);
          i-=kerroinY*2;
        }
      }
      paired = !paired;
      j-=kerroinX+40;
      i-=kerroinY*2;
    }
  }

  void drawPoints(float xPoint, float yPoint) 
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) 
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint-40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint-kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
      }
    }
    else 
    {
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint-40, yPoint);
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
    }
    
    return;
  }
  
  void drawLines(float xPoint, float yPoint) 
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) 
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint-40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint-kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
      }
    }
    else 
    {
      line(xPoint, yPoint, xPoint-40, yPoint);
      line(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      line(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
    }
    
    return;
  }
  void drawPointsNoise(float xPoint, float yPoint) 
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) 
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint-40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint-kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
      }
    }
    else 
    {
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint-40, yPoint);
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
    }
    
    return;
  }
}
