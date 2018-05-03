class DrawHelp
{
  void draw()
  {
    if (width <= 20 || height <= 20)
    {
      fill(variableHandler.c, 255, 255, 255);
      text("Not enough space for help", 0, 0, width, height);
      noFill(); 
    }
    else
    {
      
    }
  }
}
