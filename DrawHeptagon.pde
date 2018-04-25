class DrawHeptagon {
  float kerroinX = ((4*sqrt(65))/13)*8;
  float kerroinY = ((4*sqrt(65))/13)*14;


  void draw() 
  {
    fill(c, 255, 255, 255);
    text("Heptagons not yet available", width/2, height/2);
    noFill();
    return; /*
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
      j-=kerroinX+40;
      i-=kerroinY*2;
    }
    return; */
  }

  void drawLines(float xPoint, float yPoint) 
  {
    noFill();
    stroke(c, 255, 255, 255);
    if (drawOnly) 
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= distance || dist(xPoint-40, yPoint, mouseX, mouseY) <= distance) 
      {
        line(xPoint, yPoint, xPoint-40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= distance || dist(xPoint+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= distance) 
      {
        line(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= distance || dist(xPoint+kerroinX, yPoint-kerroinY, mouseX, mouseY) <= distance) 
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
}
