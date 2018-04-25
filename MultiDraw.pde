float distance = 50f;
boolean drawOnly = true;
boolean drawSphereBool = false;
int a = 64;
int c = 0;
int corners = 4;
int timeout = 0;
DrawHexagon drawHexagon;
DrawSquare drawSquare;
DrawPentagon drawPentagon;
DrawCircle drawCircle;

void setup() 
{
 size(1270, 720);
 colorMode(HSB);
 background(240, 24.14, 11.37);
 drawHexagon = new DrawHexagon();
 drawSquare = new DrawSquare();
 drawCircle = new DrawCircle();
 drawPentagon = new DrawPentagon();
}

void draw() 
{
 noStroke();
 fill(240, 24.14, 11.37, a);
 rect(0, 0, width, height);
 if (c >= 270)  c=0;  else  c++;
 if (timeout > 0) timeout--;
 drawCall();
}

void drawCall() 
{
  if (drawSphereBool)
  {
    drawCircle.draw();
  }
  else 
  {
    switch (corners) 
    {
      case 3:
        break;
      case 4:
        drawSquare.draw();
        break;
      case 5:
        drawPentagon.draw();
        break;
      case 6:
        drawHexagon.draw();
        break;
    }
  }  
}

void keyPressed() 
{
  if (key == 'u' || key == 'U')
  {
    if (distance >= 10f) 
    {
      distance -= 10f;
      return;
    }
    else if (distance == 0f) 
    {
      drawOnly = false;
      return;
    }
    else 
    {
      return;
    }
  }
  if (key == 'i' || key == 'i')
  {
    if (!drawOnly) 
    {
      drawOnly = true;
      distance += 10f;
      return; 
    }
    else if (width > distance) 
    {
      distance += 10f;
      return;
    }
    else 
    {
      return;
    }
  }
  if (key == 'm' || key == 'M')
  {
    if (a >= 240)
    {
      return;
    }
    else
    {
      a += 16;
      return;
    }
  }
  if (key == 'n' || key == 'N')
  {
    if (a >= 16)
    {
      a -= 16;
      return;
    }
    else
    {
      return;
    }
  }
  if (key == '-')
  {
   if (corners > 3)
   {
     corners--;
     return;
   }
   else
   {
     return;
   }
  }
  if (key == '+')
  {
   if (corners < 8)
   {
     corners++;
     return;
   }
   else
   {
     return;
   }
  }
  if (key == 'd')
  {
   if (timeout == 0)
   {
     drawSphereBool = !drawSphereBool;
     return;
   }
   else
   {
     return; 
   }
  }
}
