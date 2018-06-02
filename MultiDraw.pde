VariableHandler variableHandler = new VariableHandler();; //Luodaan muutujasäiliö ja appointataan se

void setup() 
{
 size(1270, 720); 
 colorMode(HSB); // Paremman väri kierron takia
 background(240, 24.14, 11.37);
 variableHandler.setup(); // Muuttuja säiliön "valmistaminen"
}

void draw() 
{
 // Taustan Piirto
 noStroke(); 
 fill(240, 24.14, 11.37, variableHandler.a); // "variableHandler.a" on alpha, jota käytämme pirroksen haiduttamiseen
 rect(0, 0, width, height);
 if (variableHandler.c >= 270)  variableHandler.c=0;  else  variableHandler.c++; //Värikierto
 if (variableHandler.timeout > 0) variableHandler.timeout--; //Timeout tietyille näppäimille, jotka muuten olisivat epäluotettavia
 if (variableHandler.drawHelpBool) variableHandler.drawHelp.draw(); else drawCall(); //Päätellään haluaako käyttäjä apua, jos halutaan piirretään se, muuten alempi päättely ketju.
}

void drawCall() 
{
  if (variableHandler.drawSphereBool) //Halutaanko piirtää ympyrä?
  {
    variableHandler.drawCircle.draw();
  }
  else 
  {
    switch (variableHandler.corners) //Valintataulukko kulmien määrälle, case #, jossa "#" on kulmien määrä.
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
  variableHandler.keyHandler.call(); //Kutsutaan näppäiten hallitsiaa
}
