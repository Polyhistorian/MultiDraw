class DrawOctagon {
  float kerroinX = ((40*sqrt(41))/41)*5;
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
    return;
  }

  void drawLines(float xPoint, float yPoint) 
  {
    noFill();
    stroke(c, 255, 255, 255);
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
