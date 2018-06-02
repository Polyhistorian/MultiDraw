class DrawSquare {
  //Edellisten säätöjen jäännöksiä, teknisesti voisi tiivistää yhdeksi.
  float kerroinX = 40;
  float kerroinY = 40;

  void draw() 
  {
    //Muodostetaan muuttujat x suunnan läpikäynnille
    float j = width;
    float jRepeat = 0f-kerroinX;
    boolean paired = false; //Muuttuja, jota käytetään muotojen "kutomiseksi" yhteen
    while (j >= jRepeat)
    {
      //Muodostetaan muuttujat y suunnan läpikäynnille
      float i = height;
      float iRepeat = 0f-kerroinY;
      while (i >= iRepeat)
      {
        //Onko parillinen vai pariton rivi, rivien välillä muuttuu vain onko vai eikö "-kerroinY", joten tämän varmaan voisi tehdä paremminkin
        if (paired)
        { 
          if (variableHandler.drawPoints) //Jos piirretään pisteittäin
          {
            if (variableHandler.drawNoise) drawPointsNoise(j, i); //Jos piirretään noisella
            else drawPoints(j, i); //Jos ei
          }
          else drawLines(j, i); //Jos piirretään oikein
          i-=kerroinY*2; //"Lasketaan" seuraavan sijainti
        }
        else
        {
          if (variableHandler.drawPoints) //Jos piirretään pisteillä
          {
            if (variableHandler.drawNoise) drawPointsNoise(j, i-kerroinY); //Jos piirretään noisella
            else drawPoints(j, i-kerroinY); //Jos ei
          }
          else drawLines(j, i-kerroinY); //Jos piirretään oikein
          i-=kerroinY*2; //"Lasketaan" seuraavan sijainti
        }
      }
      paired = !paired; //Muutetaan parillisuus
      j-=variableHandler.separation+10; //"Lasketaan" seuraavan paikka
      i-=variableHandler.separation+10;
    }
  }

  void drawPoints(float xPoint, float yPoint) //Jos piirrämme muotoja pisteillä
  {
    //Muotojen värjääminen
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) //Jos piirrämme vain hiiren ympärillä
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint+40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint, yPoint+40);
      }
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint+40, yPoint, xPoint+40, yPoint+40);
      }
      if (dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint+40, xPoint+40, yPoint+40);
      }
    }
    else //Muuten
    {
      //Piirretään viivat
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint+40, yPoint);
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint, yPoint+40);
      variableHandler.linePoints.draw(xPoint+40, yPoint, xPoint+40, yPoint+40);
      variableHandler.linePoints.draw(xPoint, yPoint+40, xPoint+40, yPoint+40);
    }
  }
  
  void drawLines(float xPoint, float yPoint) 
  {
    //Muotojen värjääminen
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) //Jos piirrämme vain hiiren ympärillä
    {
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint+40, yPoint);
      }
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint, yPoint+40);
      }
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint+40, yPoint, xPoint+40, yPoint+40);
      }
      if (dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint+40, xPoint+40, yPoint+40);
      }
    }
    else //Muuten
    {
      //Piirretään viivat
      line(xPoint, yPoint, xPoint+40, yPoint);
      line(xPoint, yPoint, xPoint, yPoint+40);
      line(xPoint+40, yPoint, xPoint+40, yPoint+40);
      line(xPoint, yPoint+40, xPoint+40, yPoint+40);
    }
  }
  void drawPointsNoise(float xPoint, float yPoint) 
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) //Jos piiretään pelkästään hiiren ympärillä
    {
      //Jos ("Piste jonka meinaamme piirtää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+40, yPoint);
      }
      //Jos ("Piste jonka meinaamme piirtää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint, yPoint+40);
      }
      //Jos ("Piste jonka meinaamme piirtää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint+40, yPoint, xPoint+40, yPoint+40);
      }
      //Jos ("Piste jonka meinaamme piirtää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint+40, xPoint+40, yPoint+40);
      }
    }
    else //Muuten
    {
      //Piirretään viivat
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+40, yPoint);
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint, yPoint+40);
      variableHandler.linePointsNoise.draw(xPoint+40, yPoint, xPoint+40, yPoint+40);
      variableHandler.linePointsNoise.draw(xPoint, yPoint+40, xPoint+40, yPoint+40);
    }
  }
}
