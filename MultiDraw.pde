VariableHandler variableHandler = new VariableHandler();;

void setup() 
{
 size(1270, 720);
 colorMode(HSB);
 background(240, 24.14, 11.37);
 variableHandler.setup();
}

void draw() 
{
 noStroke();
 fill(240, 24.14, 11.37, variableHandler.a);
 rect(0, 0, width, height);
 if (variableHandler.c >= 270)  variableHandler.c=0;  else  variableHandler.c++;
 if (variableHandler.timeout > 0) variableHandler.timeout--;
 if (variableHandler.drawHelpBool) variableHandler.drawHelp.draw();
 else drawCall();
}

void drawCall() 
{
  if (variableHandler.drawSphereBool)
  {
    variableHandler.drawCircle.draw();
  }
  else 
  {
    switch (variableHandler.corners) 
    {
      case 3:
      {
        variableHandler.drawTriangle.draw();
        break;
      }
      case 4:
      {
        variableHandler.drawSquare.draw();
        break;
      }
      case 5:
      {
        variableHandler.drawPentagon.draw();
        break;
      }
      case 6:
      {
        variableHandler.drawHexagon.draw();
        break;
      }
      case 7:
      {
        variableHandler.drawHeptagon.draw();
        break;
      }
      case 8:
      {
        variableHandler.drawOctagon.draw();
        break;
      }
    }
  }  
}

void keyPressed() 
{
  variableHandler.keyHandler.call();
}
