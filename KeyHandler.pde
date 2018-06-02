class KeyHandler
{
  void call()
  {
    switch (key) 
    {
      case '+':
      {
        if (variableHandler.corners < 8)
        {
          variableHandler.mouseDistance = 50f;
          variableHandler.separation = 40f;
          variableHandler.corners++;
          return;
        }
        else
        {
          return;
        }
      }
      case '-':
      {
        if (variableHandler.corners > 3)
        {
          variableHandler.mouseDistance = 50f;
          variableHandler.separation = 40f;
          variableHandler.corners--;
          return;
        }
        else
        {
          return;
         }
      }
      case 'd':
      {
        if (variableHandler.timeout == 0)
        {
          variableHandler.mouseDistance = 50f;
          variableHandler.separation = 40f;
          variableHandler.drawSphereBool = !variableHandler.drawSphereBool;
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'h':
      {
        if (variableHandler.timeout == 0)
        {
          variableHandler.drawHelpBool = !variableHandler.drawHelpBool;
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'i':
      {
        if (!variableHandler.drawOnly) 
        {
          variableHandler.drawOnly = true;
          return;
        }
        else if (width > variableHandler.mouseDistance) 
        {
          variableHandler.mouseDistance += 10f;
          return;
        }
        else 
        {
          return;
        }
      }
      case 'j':
      {
        if (variableHandler.separation >= 5f)
        {
          variableHandler.separation -= 5f;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'k':
      {
        variableHandler.separation += 5f;
        return;
      }
      case 'l':
      {
        if (variableHandler.timeout == 0)
        {
          variableHandler.drawNoise = !variableHandler.drawNoise;
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'm':
      {
        if (variableHandler.a >= 240)
        {
          return;
        }
        else
        {
          variableHandler.a += 16;
          return;
        }
      }
      case 'n':
      {
        if (variableHandler.a >= 16)
        {
          variableHandler.a -= 16;
          return;
        }
        else
        {
          return;
        } 
      }
      case 'o':
      {
        if (variableHandler.timeout == 0)
        {
          variableHandler.drawPoints = !variableHandler.drawPoints;
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'r':
      {
          variableHandler.mouseDistance = 50f;
          variableHandler.separation = 40f;
          variableHandler.corners = 6;
      }
      case 'u': 
      {
        if (variableHandler.mouseDistance >= 20f) 
        {
          variableHandler.mouseDistance -= 10f;
          return;
        }
        else if (variableHandler.mouseDistance == 10f) 
        {
          variableHandler.drawOnly = false;
          return;
        }
        else 
        {
          return;
        }
      }
      case 'w':
      {
        if (variableHandler.timeout == 0)
        {
          variableHandler.drawWave = !variableHandler.drawWave;
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
    }
  }
}
