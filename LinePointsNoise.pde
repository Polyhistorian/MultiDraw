class LinePointsNoise
{
  ////////////////////////////////////////////////////////////////////////////////////////////////////
  /*                                                                                                 /
  / Tämä tiedosto on pitkälti sama kuin viereinen LinePoints tiedosto, eroavaisuus on noise koodissa /
  / Tämä myös tarkoittaa sitä, että tässäkin saattaa olla sama virhe kuin kyseissä tiedostossa.      /
  / Samankaltaisuuden takia olen kommentoinut vain noise koodin ja siihen liittyvät                 */
  ////////////////////////////////////////////////////////////////////////////////////////////////////
  
  
 void draw(float xStart, float yStart, float xEnd, float yEnd)
 {
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
 
 void pospos(float xStart, float yStart, float xEnd, float yEnd)
 {
  float pointDistance = dist(xStart, yStart, xEnd, yEnd);
  float rounds = 0;
  while (rounds <= pointDistance)
  {
    float xPoint = map(rounds, 0, pointDistance, xStart, xEnd);
    float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);
    float noiseValue = noise(xPoint, yPoint, random(0,1)); //Lasketaan noise kyseiselle pisteelle, joudumme antamaan sille myös random arvon, jos emme joka kierros halua vaihtaa noiseSeediä (Joka varmaankin olisi parempi vaihtoehto "smoothnesin" takia)
    point(xPoint+((noiseValue-0.50)*10), yPoint+((noiseValue-0.50)*10)); //noiseValue-0.50 laskutoimitus on tuolla saadaksemme mahdollisuuksiksi myös negatiivisia arvoja
    rounds++;
  }
 }
 
 void posneg(float xStart, float yStart, float xEnd, float yEnd)
 {
   float pointDistance = dist(xStart, yStart, xEnd, yEnd);
   float rounds = 0;
   while (rounds <= pointDistance)
   {
     float xPoint = map(rounds, 0, pointDistance, xStart, xEnd);
     float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);
    float noiseValue = noise(xPoint, yPoint, random(0,1)); //Lasketaan noise kyseiselle pisteelle, joudumme antamaan sille myös random arvon, jos emme joka kierros halua vaihtaa noiseSeediä (Joka varmaankin olisi parempi vaihtoehto "smoothnesin" takia)
    point(xPoint+((noiseValue-0.50)*10), yPoint+((noiseValue-0.50)*10)); //noiseValue-0.50 laskutoimitus on tuolla saadaksemme mahdollisuuksiksi myös negatiivisia arvoja
     rounds++;
   }
 }
 
 void negpos(float xStart, float yStart, float xEnd, float yEnd)
 {
   float pointDistance = dist(xStart, yStart, xEnd, yEnd);
   float rounds = 0;
   while (rounds <= pointDistance)
   {
     float xPoint = map(rounds, 0, pointDistance, xStart, xEnd);
     float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);
    float noiseValue = noise(xPoint, yPoint, random(0,1)); //Lasketaan noise kyseiselle pisteelle, joudumme antamaan sille myös random arvon, jos emme joka kierros halua vaihtaa noiseSeediä (Joka varmaankin olisi parempi vaihtoehto "smoothnesin" takia)
    point(xPoint+((noiseValue-0.50)*10), yPoint+((noiseValue-0.50)*10)); //noiseValue-0.50 laskutoimitus on tuolla saadaksemme mahdollisuuksiksi myös negatiivisia arvoja
     rounds++;
   }
 }
 
 void negneg(float xStart, float yStart, float xEnd, float yEnd)
 {
   float pointDistance = dist(xStart, yStart, xEnd, yEnd);
   float rounds = 0;
   while (rounds <= pointDistance)
   {
     float xPoint = map(rounds, 0, pointDistance, xStart, xEnd);
     float yPoint = map(rounds, 0, pointDistance, yStart, yEnd);
    float noiseValue = noise(xPoint, yPoint, random(0,1)); //Lasketaan noise kyseiselle pisteelle, joudumme antamaan sille myös random arvon, jos emme joka kierros halua vaihtaa noiseSeediä (Joka varmaankin olisi parempi vaihtoehto "smoothnesin" takia)
    point(xPoint+((noiseValue-0.50)*10), yPoint+((noiseValue-0.50)*10)); //noiseValue-0.50 laskutoimitus on tuolla saadaksemme mahdollisuuksiksi myös negatiivisia arvoja
     rounds++;
   }
 }
 void eqpos(float xStart, float yStart, float xEnd, float yEnd)
 {
   float yCurrent = yStart;
   while (yCurrent >= yEnd)
   {
     float noiseValue = noise(yCurrent, random(0,1)); //Lasketaan noise kyseiselle pisteelle, joudumme antamaan sille myös random arvon, jos emme joka kierros halua vaihtaa noiseSeediä (Joka varmaankin olisi parempi vaihtoehto "smoothnesin" takia)
     point(xStart+((noiseValue-0.50)*10), yCurrent); //noiseValue-0.50 laskutoimitus on tuolla saadaksemme mahdollisuuksiksi myös negatiivisia arvoja
     yCurrent--;
   }
 }
 void eqneg(float xStart, float yStart, float xEnd, float yEnd)
 {
   float yCurrent = yStart;
   while (yCurrent <= yEnd)
   {
     float noiseValue = noise(yCurrent, random(0,1)); //Lasketaan noise kyseiselle pisteelle, joudumme antamaan sille myös random arvon, jos emme joka kierros halua vaihtaa noiseSeediä (Joka varmaankin olisi parempi vaihtoehto "smoothnesin" takia)
     point(xStart+((noiseValue-0.50)*10), yCurrent); //noiseValue-0.50 laskutoimitus on tuolla saadaksemme mahdollisuuksiksi myös negatiivisia arvoja
     yCurrent++;
   }
 }
 void poseq(float xStart, float yStart, float xEnd, float yEnd)
 {
   float xCurrent = xStart;
   while (xCurrent >= xEnd)
   {
     float noiseValue = noise(xCurrent, random(0,1)); //Lasketaan noise kyseiselle pisteelle, joudumme antamaan sille myös random arvon, jos emme joka kierros halua vaihtaa noiseSeediä (Joka varmaankin olisi parempi vaihtoehto "smoothnesin" takia)
     point(xCurrent, yStart+((noiseValue-0.50)*10)); //noiseValue-0.50 laskutoimitus on tuolla saadaksemme mahdollisuuksiksi myös negatiivisia arvoja
     xCurrent--;
   }
 }
 void negeq(float xStart, float yStart, float xEnd, float yEnd)
 {
   float xCurrent = xStart;
   while (xCurrent <= xEnd)
   {
     float noiseValue = noise(xCurrent, random(0,1)); //Lasketaan noise kyseiselle pisteelle, joudumme antamaan sille myös random arvon, jos emme joka kierros halua vaihtaa noiseSeediä (Joka varmaankin olisi parempi vaihtoehto "smoothnesin" takia)
     point(xCurrent, yStart+((noiseValue-0.50)*10)); //noiseValue-0.50 laskutoimitus on tuolla saadaksemme mahdollisuuksiksi myös negatiivisia arvoja
     xCurrent++;
   }
 }
 void eqeq(float xStart, float yStart)
 {
   //Yksittäiselle pisteelle noise tästä funktiosta tuntuisi itsestäni oudolta, mutta tässä se voitaisiin implementoida
   point(xStart, yStart);
 }
}
