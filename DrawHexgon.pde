class DrawHexagon {
  //Semi-mutkaista matematiikkaa, jolla saamme "kulmakerroimen" jota kuusikulmion sivut noudattavat
  float kerroinX = ((((4f*sqrt(65f))/13f)*8f)/40)*variableHandler.size;
  float kerroinY = ((((4f*sqrt(65f))/13f)*14f)/40)*variableHandler.size;


  void draw() 
  {
    //Muodostetaan muuttujat x suunnan läpikäynnille
    float j = width;
    float jRepeat = 0f-kerroinX;
    boolean paired = false; //Muuttuja, jota käytetään muotojen "kutomiseksi" yhte
    while (j >= jRepeat)
    {
      //Muodostetaan muuttujat y suunnan läpikäynnille
      float i = height;
      float iRepeat = 0f-kerroinY;
      while (i >= iRepeat)
      {
        if (paired) //Onko parillinen vai pariton rivi, rivien välillä muuttuu vain onko vai eikö "-kerroinY", joten tämän varmaan voisi tehdä paremminkin
        { 
          if (variableHandler.drawPoints) //Jos piirrämme linjoja pisteittäin
          {
            if (variableHandler.drawNoise) drawPointsNoise(j, i); //Jos käytämme noisea
            else drawPoints(j, i); //Jos ei
          }
          else drawLines(j, i); //Jos voimme käyttää oikeita linjoja
          i-=kerroinY*2; //"Lasketaan" seuraavan paikka
        }
        else
        {
          if (variableHandler.drawPoints) //Jos piirrämme linjoja pisteittäin
          {
            if (variableHandler.drawNoise) drawPointsNoise(j, i-kerroinY); //Jos käytämme noisea
            else drawPoints(j, i-kerroinY); //Jos ei
          }
          else drawLines(j, i-kerroinY); //Jos voimme käyttää oikeita linjoja
          i-=kerroinY*2; //"Lasketaan" seuraavan paikka
        }
      }
      paired = !paired; //Muutetaan parillisuus
      j-=kerroinX+40; //"Lasketaan" seuraavan rivin paikka
      i-=kerroinY*2; //En tiedä ainakaan enään miksi täällä pitää olla tämä, mutta ei toimi ilmankaan
    }
  }

  void drawPoints(float xPoint, float yPoint) //Jos piirrämme linjoja pisteittäinaaa
  {
    //Muotojen värjääminen
    noFill();
    stroke(variableHandler.c, 255, 255, 255); //Muotojen värjääminen
    if (variableHandler.drawOnly) //Jos piirrämme vain hiiren ympärillä
    {
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint-40, yPoint);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint-kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
      }
    }
    else //Muuten
    {
      //Piirrä linjat
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint-40, yPoint);
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
    }
    
    return;
  }
  
  void drawLines(float xPoint, float yPoint) //Jos piirrämme linjoja "oikein"
  {
    //Muotojen värjääminen
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) //Jos piirrämme vain hiiren ympärillä
    {
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint-40, yPoint);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint-kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
      }
    }
    else //Muuten
    {
      //Piirrä linjat
      line(xPoint, yPoint, xPoint-40, yPoint);
      line(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      line(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
    }
    
    return;
  }
  
  void drawPointsNoise(float xPoint, float yPoint) //Jos piirrämme linjoja pisteittäin ja noisella
  {
    //Muotojen värjääminen
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) //Jos piirrämme vain hiiren ympärillä
    {
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint-40, yPoint);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+kerroinX, yPoint-kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
      }
    }
    else //Muuten
    {
      //Piirrä linjat
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint-40, yPoint);
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+kerroinX, yPoint+kerroinY);
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+kerroinX, yPoint-kerroinY);
    }
    
    return;
  }
}
