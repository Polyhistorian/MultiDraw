class LinePoints
{
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  /*                                                                                                                                                                                        /
  / Olen nyt jälkeenpäin tajunnut, että tämä logiikka ketju saattaa olla turha, koska teknisesti tämä koodin pätkä                                                                          /
  / "                                                                                                                                                                                       /
  / float pointDistance = dist(xStart, yStart, xEnd, yEnd); //Lasketaan etäisyys aloitus- ja lopetuspisteiden välillä, jota voimme käyttää laskemaan kuinta monta pistettä tarvitsemme      /
  / float rounds = 0; //Laskuri                                                                                                                                                             /
  / while (rounds <= pointDistance)                                                                                                                                                         /
  / {                                                                                                                                                                                       /
  /   float xPoint = map(rounds, 0, pointDistance, xStart, xEnd); //Lasketaan pisteen koordinaatit suhteuttamalla pisteen "numero" suoralle alkupisteestä loppupisteesään                   /
  /   float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);                                                                                                                           /
  /   point(xPoint, yPoint); //Luodaan piste                                                                                                                                                /              
  /   rounds++; //Nostetaan pisteen numeroa                                                                                                                                                 /
  / }                                                                                                                                                                                       /
  / "                                                                                                                                                                                       /
  / voisi toimia kaikissa tilanteissa (Pienillä muutoksilla(, mutta en ole varma, joten en ala sotkemaan. Plus täten voitte nähdä miten minä tein ja oppia virheistäni.                     /
  / Olen kuitenkin kommentoinut koko ala osan, jos haluatte sitä tutkia.                                                                                                                   */
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
   
 void draw(float xStart, float yStart, float xEnd, float yEnd)
 {
   //Iso päättely ketju siitä mihin suuntaan linjan pitäisi mennä.
   //pos == positiivinen, neg == negatiivinen, eq = yhtäkuin eli ei liikettä
   //Ensimmäinen "sijainti" x koordinaatti, toinen "sijainti" y koordinaatti
   if (xStart > xEnd)
   {
     if (yStart > yEnd)
     {
       pospos(xStart, yStart, xEnd, yEnd);
     }
     else if (yStart < yEnd)
     {
       posneg(xStart, yStart, xEnd, yEnd);
     }
     else
     {
       poseq(xStart, yStart, xEnd, yEnd);
     }
   }
   else if (xStart < xEnd)
   {
     if (yStart > yEnd)
     {
       negpos(xStart, yStart, xEnd, yEnd);
     }
     else if (yStart < yEnd)
     {
       negneg(xStart, yStart, xEnd, yEnd);
     }
     else
     {
       negeq(xStart, yStart, xEnd, yEnd);
     }
   }
   else
   {
     if (yStart > yEnd)
     {
       eqpos(xStart, yStart, xEnd, yEnd);
     }
     else if (yStart < yEnd)
     {
       eqneg(xStart, yStart, xEnd, yEnd);
     }
     else
     {
       eqeq(xStart, yStart);
     }
   }
 }
 
 // pos == Positive, neg == Negative, eq == Equal
 
 void pospos(float xStart, float yStart, float xEnd, float yEnd) //Molemmat arvot positiivisia
 {
  float pointDistance = dist(xStart, yStart, xEnd, yEnd); //Lasketaan etäisyys aloitus- ja lopetuspisteiden välillä, jota voimme käyttää laskemaan kuinta monta pistettä tarvitsemme
  float rounds = 0; //Laskuri
  while (rounds <= pointDistance)
  {
    float xPoint = map(rounds, 0, pointDistance, xStart, xEnd); //Lasketaan pisteen koordinaatit suhteuttamalla pisteen "numero" suoralle alkupisteestä loppupisteesään
    float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);
    point(xPoint, yPoint); //Luodaan piste
    rounds++; //Nostetaan pisteen numeroa
  }
 }
 
 void posneg(float xStart, float yStart, float xEnd, float yEnd) // X positiivinen, Y negatiivinen
 {
   float pointDistance = dist(xStart, yStart, xEnd, yEnd); //Lasketaan etäisyys aloitus- ja lopetuspisteiden välillä, jota voimme käyttää laskemaan kuinta monta pistettä tarvitsemme
   float rounds = 0; //Laskuri
   while (rounds <= pointDistance)
   {
     float xPoint = map(rounds, 0, pointDistance, xStart, xEnd); //Lasketaan pisteen koordinaatit suhteuttamalla pisteen "numero" suoralle alkupisteestä loppupisteesään
     float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);
     point(xPoint, yPoint); //Luodaan piste
     rounds++; //Nostetaan pisteen numeroa
   }
 }
 
 void negpos(float xStart, float yStart, float xEnd, float yEnd)
 {
   float pointDistance = dist(xStart, yStart, xEnd, yEnd); //Lasketaan etäisyys aloitus- ja lopetuspisteiden välillä, jota voimme käyttää laskemaan kuinta monta pistettä tarvitsemme
   float rounds = 0; //Laskuri
   while (rounds <= pointDistance)
   {
     float xPoint = map(rounds, 0, pointDistance, xStart, xEnd); //Lasketaan pisteen koordinaatit suhteuttamalla pisteen "numero" suoralle alkupisteestä loppupisteesään
     float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);
     point(xPoint, yPoint); //Luodaan piste
     rounds++; //Nostetaan pisteen numeroa
   }
 }
 
 void negneg(float xStart, float yStart, float xEnd, float yEnd)
 {
   float pointDistance = dist(xStart, yStart, xEnd, yEnd); //Lasketaan etäisyys aloitus- ja lopetuspisteiden välillä, jota voimme käyttää laskemaan kuinta monta pistettä tarvitsemme
   float rounds = 0; //Laskuri
   while (rounds <= pointDistance)
   {
     float xPoint = map(rounds, 0, pointDistance, xStart, xEnd); //Lasketaan pisteen koordinaatit suhteuttamalla pisteen "numero" suoralle alkupisteestä loppupisteesään
     float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);
     point(xPoint, yPoint); //Luodaan piste
     rounds++; //Nostetaan pisteen numeroa
   }
 }
 void eqpos(float xStart, float yStart, float xEnd, float yEnd) //X on sama, Y positiivinen
 {
   float yCurrent = yStart; //Luodaan laskuri
   while (yCurrent >= yEnd) //Koska toinen arvoista on sama voimme luoda pisteet yksinkertaisella loopilla
   {
     point(xStart, yCurrent);
     yCurrent--;
   }
 }
 void eqneg(float xStart, float yStart, float xEnd, float yEnd) //X on sama, Y negatiivinen
 {
   float yCurrent = yStart; //Luodaan laskuri
   while (yCurrent <= yEnd) //Koska toinen arvoista on sama voimme luoda pisteet yksinkertaisella loopilla
   {
     point(xStart, yCurrent);
     yCurrent++;
   }
 }
 void poseq(float xStart, float yStart, float xEnd, float yEnd) //X on positiivinen, Y on sama
 {
   float xCurrent = xStart; //Luodaan laskuri
   while (xCurrent >= xEnd) //Koska toinen arvoista on sama voimme luoda pisteet yksinkertaisella loopilla
   {
     point(xCurrent, yStart);
     xCurrent--;
   }
 }
 void negeq(float xStart, float yStart, float xEnd, float yEnd) //X on negatiivinen, Y on sama
 {
   float xCurrent = xStart; //Luodaan laskuri
   while (xCurrent <= xEnd) //Koska toinen arvoista on sama voimme luoda pisteet yksinkertaisella loopilla
   {
     point(xCurrent, yStart);
     xCurrent++;
   }
 }
 void eqeq(float xStart, float yStart) //Molemmat arvot samoja, eli piste
 {
   //Joten luomme pisteen
   point(xStart, yStart);
 }
}
