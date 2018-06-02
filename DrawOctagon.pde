class DrawOctagon {
  //Lasketaan kahdeksankulmion "kulmakerroin", jota käytetään linjojen piirtämiseen
  float kerroinX = ((40*sqrt(41))/41)*4;
  float kerroinY = ((40*sqrt(41))/41)*4;


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
          if (variableHandler.drawPoints) //Jos piirrämme pisteittäin
          {
            if (variableHandler.drawNoise) drawPointsNoise(j, i); //Jos piirrämme noisella
            else drawPoints(j, i); //Jos ei
          }
          else drawLines(j, i); //Jos piirrämme oikein
          i-=kerroinY*(variableHandler.separation/20)+40; //"Lasketaan" seuraavan paikka
        }
        else
        {
          if (variableHandler.drawPoints) //Jos piirrämme pisteittäin
          {
            if (variableHandler.drawNoise) drawPointsNoise(j, i-(kerroinY+20)); //Jos piirrämme noisella
            else drawPoints(j, i-(kerroinY+20)); //Jos ei
          }
          else drawLines(j, i-(kerroinY+20)); //Jos piirrämme oikein
          i-=kerroinY*(variableHandler.separation/20)+40; //"Lasketaan" seuraavan paikka
        }
      }
      paired = !paired; //Muutetaan parillisuus
      j-=kerroinX*(variableHandler.separation/40)+59.6f; //Lasketaan seuraavan paikka
      i-=kerroinY*2; //Taas en ole täsmälleen varma ainakaan enään miksi tämä on täällä, ¯\_('')_/¯
    }
    return;
  }

  void drawPoints(float xPoint, float yPoint) //Jos piirrämme linjoja pisteittäin
  {
    //Muotojen värjääminen
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) //Jos piirrämme vain hiiren ympärillä
    {
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint+40, yPoint);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePoints.draw(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
      }
    }
    else //Muuten
    {
      //Piirrä linjat
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint+40, yPoint);
      variableHandler.linePoints.draw(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      variableHandler.linePoints.draw(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      variableHandler.linePoints.draw(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      variableHandler.linePoints.draw(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      variableHandler.linePoints.draw(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      variableHandler.linePoints.draw(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      variableHandler.linePoints.draw(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
    }
  }
  
  void drawLines(float xPoint, float yPoint) //Jos piirrämme linjoja oikein
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) //Jos piirrämme vain hiiren ympärillä
    {
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint+40, yPoint);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        line(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
    }
    else //Muuten
    {
      //Piirrä linjat
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
  
  void drawPointsNoise(float xPoint, float yPoint) //Jos piirrämme linjoja pisteittäin ja noisella
  {
    //Muotojen värjääminen
    noFill();
    stroke(variableHandler.c, 255, 255, 255);
    if (variableHandler.drawOnly) //Jos piirrämme vain hiiren ympärillä
    {
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+40, yPoint);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40, yPoint, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint-kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint-kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint+40+kerroinX, yPoint+kerroinY+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
      if (dist(xPoint, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance || dist(xPoint+40, yPoint+kerroinY*2+40, mouseX, mouseY) <= variableHandler.mouseDistance) 
      {
        variableHandler.linePointsNoise.draw(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
      }
      //Jos ("Linjan jonka meinaamme piirtää yksi pää" <= "Haluttu etäisyys kursoriin" || "Linjan jonka meinaamme piirtää toinen pää" <= "Haluttu etäisyys kursoriin")
    }
    else //Muuten
    {
      //Piirrä linjat
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint+40, yPoint);
      variableHandler.linePointsNoise.draw(xPoint, yPoint, xPoint-kerroinX, yPoint+kerroinY);
      variableHandler.linePointsNoise.draw(xPoint+40, yPoint, xPoint+40+kerroinX, yPoint+kerroinY);
      variableHandler.linePointsNoise.draw(xPoint-kerroinX, yPoint+kerroinY, xPoint-kerroinX, yPoint+kerroinY+40);
      variableHandler.linePointsNoise.draw(xPoint+40+kerroinX, yPoint+kerroinY, xPoint+40+kerroinX, yPoint+kerroinY+40);
      variableHandler.linePointsNoise.draw(xPoint-kerroinX, yPoint+kerroinY+40, xPoint, yPoint+kerroinY*2+40);
      variableHandler.linePointsNoise.draw(xPoint+40+kerroinX, yPoint+kerroinY+40, xPoint+40, yPoint+kerroinY*2+40);
      variableHandler.linePointsNoise.draw(xPoint, yPoint+kerroinY*2+40, xPoint+40, yPoint+kerroinY*2+40);
    }
  }
}
