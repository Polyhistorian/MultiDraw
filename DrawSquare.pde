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
          drawLines(j, i);
          i-=kerroinY*2;
        }
        else
        {
          drawLines(j, i-kerroinY);
          i-=kerroinY*2;
        }
      }
      paired = !paired;
      j-=separation+10;
      i-=separation+10;
    }
  }

  void drawLines(float xPoint, float yPoint) 
  {
    noFill();
    stroke(c, 255, 255, 255);
    if (drawOnly) 
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= distance || dist(xPoint+40, yPoint, mouseX, mouseY) <= distance) 
      {
        line(xPoint, yPoint, xPoint+40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= distance || dist(xPoint, yPoint+40, mouseX, mouseY) <= distance) 
      {
        line(xPoint, yPoint, xPoint, yPoint+40);
      }
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= distance || dist(xPoint+40, yPoint+40, mouseX, mouseY) <= distance) 
      {
        line(xPoint+40, yPoint, xPoint+40, yPoint+40);
      }
      if (dist(xPoint, yPoint+40, mouseX, mouseY) <= distance || dist(xPoint+40, yPoint, mouseX, mouseY) <= distance) 
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
    
    return;
  }
}
