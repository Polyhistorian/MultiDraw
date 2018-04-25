class KeyHandler
{
  void call()
  {
    switch (key) 
    {
      case '+':
      {
        if (corners < 8)
        {
          distance = 50f;
          separation = 40f;
          corners++;
          return;
        }
        else
        {
          return;
        }
      }
      case '-':
      {
        if (corners > 3)
        {
          distance = 50f;
          separation = 40f;
          corners--;
          return;
        }
        else
        {
          return;
         }
      }
      case 'd':
      {
        if (timeout == 0)
        {
          distance = 50f;
          separation = 40f;
          drawSphereBool = !drawSphereBool;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'i':
      {
        if (!drawOnly) 
        {
          drawOnly = true;
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
      case 'j':
      {
        if (separation >= 5f)
        {
          separation -= 5f;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'k':
      {
        separation += 5f;
        return;
      }
      case 'm':
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
      case 'n':
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
      case 'r':
      {
          distance = 50f;
          separation = 40f;
          corners = 6;
      }
      case 'u': 
      {
        if (distance >= 20f) 
        {
          distance -= 10f;
          return;
        }
        else if (distance == 10f) 
        {
          drawOnly = false;
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
