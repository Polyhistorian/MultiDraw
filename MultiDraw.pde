float distance = 50f;
float separation = 40f;
boolean drawOnly = true;
boolean drawSphereBool = false;
int a = 64;
int c = 0;
int corners = 8;
int timeout = 0;
DrawOctagon drawOctagon;
DrawHeptagon drawHeptagon;
DrawHexagon drawHexagon;
DrawPentagon drawPentagon;
DrawSquare drawSquare;
DrawTriangle drawTriangle;
DrawCircle drawCircle;
KeyHandler keyHandler;

void setup() 
{
 size(1270, 720);
 colorMode(HSB);
 background(240, 24.14, 11.37);
 drawOctagon = new DrawOctagon();
 drawHeptagon = new DrawHeptagon();
 drawHexagon = new DrawHexagon();
 drawPentagon = new DrawPentagon();
 drawSquare = new DrawSquare();
 drawTriangle = new DrawTriangle();
 drawCircle = new DrawCircle();
 keyHandler = new KeyHandler();
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
      {
        drawTriangle.draw();
        break;
      }
      case 4:
      {
        drawSquare.draw();
        break;
      }
      case 5:
      {
        drawPentagon.draw();
        break;
      }
      case 6:
      {
        drawHexagon.draw();
        break;
      }
      case 7:
      {
        drawHeptagon.draw();
        break;
      }
      case 8:
      {
        drawOctagon.draw();
        break;
      }
    }
  }  
}

void keyPressed() 
{
  keyHandler.call();
}
