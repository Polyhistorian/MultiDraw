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
          drawLines(j, i);
          i-=kerroinY*(separation/20)+40;
        }
        else
        {
          drawLines(j, i-(kerroinY+20));
          i-=kerroinY*(separation/20)+40;
        }
      }
      paired = !paired;
      j-=kerroinX*(separation/40)+59.6f;
      i-=kerroinY*2;
    }
    return;
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
      if (dist(xPoint, yPoint, mouseX, mouseY) <= distance || dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= distance) 
      {
        line(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= distance || dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= distance) 
      {
        line(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= distance || dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= distance) 
      {
        line(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      }
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= distance || dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= distance) 
      {
        line(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      }
      if (dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= distance || dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= distance) 
      {
        line(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      }
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= distance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= distance) 
      {
        line(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      }
      if (dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= distance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= distance) 
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
