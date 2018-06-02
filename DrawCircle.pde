class DrawCircle {
  //Edellisten säätöjen jäännöksiä, teknisesti voisi tiivistää yhdeksi.
  float kerroinX = 40;
  float kerroinY = 40;


  void draw() 
  {
    noFill();
    stroke(variableHandler.c, 255, 255, 255); //Muotojen värjääminen
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
        if (paired) // Onko parillinen vai pariton rivi, rivien välillä muuttuu vain onko vai eikö "-kerroinY", joten tämän varmaan voisi tehdä paremminkin
        {
          if (dist(j, i, mouseX, mouseY) <= variableHandler.mouseDistance) // Jos ("Piste jonka meinaamme piirtää" <= "Haluttu etäisyys kursoriin")
          {
            //Päättely ketju siitä haluammeko pisteitä vai emmekö
            if(variableHandler.drawNoise) variableHandler.circlePoints.draw(j, i, variableHandler.size);
            else ellipse(j, i, variableHandler.size, variableHandler.size);
          }
          i-=variableHandler.separation*2; //"Lasketaan" seuraavan paikka
        }
        else
        {
          if (dist(j, i-kerroinY, mouseX, mouseY) <= variableHandler.mouseDistance) // Jos ("Piste jonka meinaamme piirtää" <= "Haluttu etäisyys kursoriin")
          {
            //Päättely ketju siitä haluammeko pisteitä vai emmekö
            if(variableHandler.drawNoise) variableHandler.circlePoints.draw(j, i-kerroinY, variableHandler.size);
            else ellipse(j, i-kerroinY, variableHandler.size, variableHandler.size);
          }
          i-=variableHandler.separation*2;//"Lasketaan" seuraavan paikka
        }
      }
      paired = !paired; //Muutetaan parillisuus
      j-=variableHandler.separation; //"Lasketaan" seuraavan rivi
    } //<>//
  }
}
