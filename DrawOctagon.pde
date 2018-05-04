class DrawOctagon {
  float kerroinX = ((40*sqrt(41))/41)*4;
  float kerroinY = ((40*sqrt(41))/41)*4;


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
          i-=kerroinY*(variableHandler.separation/20)+40;
        }
        else
        {
          if (variableHandler.drawPoints) drawPoints(j, i-(kerroinY+20));
          else drawLines(j, i-(kerroinY+20));
          i-=kerroinY*(variableHandler.separation/20)+40;
        }
      }
      paired = !paired;
      j-=kerroinX*(variableHandler.separation/40)+59.6f;
      i-=kerroinY*2;
    }
    return;
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
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      }
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      }
      if (dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      }
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      }
      if (dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
      }
    }
    else
    {
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint+40, yPoint);
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      variableHandler.linePoints.draw(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      variableHandler.linePoints.draw(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      variableHandler.linePoints.draw(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      variableHandler.linePoints.draw(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      variableHandler.linePoints.draw(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      variableHandler.linePoints.draw(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
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
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      }
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      }
      if (dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      }
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      }
      if (dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
      }
    }
    else
    {
      line(xPoint, yPoint, xPoint+40, yPoint);
      line(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      line(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      line(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      line(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      line(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      line(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      line(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
    }
  }
}
