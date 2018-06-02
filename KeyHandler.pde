class KeyHandler
{
  void call()
  {
    switch (key) //Valintataulukko näppäimille, case #, jossa "#" on näppäin.
    {
      case '+': //Kulmien lisääminen
      {
        if (variableHandler.corners < 8) //Vain jos kulmia ei ole jo kahdeksaa
        {
          //Asetetaan piirtoarvot "normaaleihin"
          variableHandler.mouseDistance = 50f;
          variableHandler.separation = 40f;
          //Lisätään kulma
          variableHandler.corners++;
          return;
        }
        else
        {
          return;
        }
      }
      case '-': //Kulmien poistaminen
      {
        if (variableHandler.corners > 3) //Vain jos kulmia on enemmän kuin 3
        {
          //Asetetaan piirtoarvot "normaaleihin"
          variableHandler.mouseDistance = 50f;
          variableHandler.separation = 40f;
          //Poistetaan kulma
          variableHandler.corners--;
          return;
        }
        else
        {
          return;
        }
      }
      case 'd': //Vaihto ympyröiden piirtoon tai takaisin
      {
        if (variableHandler.timeout == 0) //Vain jos näppäimet ovat pois timeoutilta
        {
          //Asetetaan piirtoarvot "normaaleihin"
          variableHandler.mouseDistance = 50f;
          variableHandler.separation = 40f;
          //Muutetaan arvo
          variableHandler.drawSphereBool = !variableHandler.drawSphereBool;
          //Lisätään timeout varmistaaksemme, että arvo ei heti vaihdu takaisin
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'h': //Vaihto apu ruudun piirtoon tai takaisin
      {
        if (variableHandler.timeout == 0) //Vain jos näppäimet eivät ole timeoutilla
        {
          //Muutetaan arvo
          variableHandler.drawHelpBool = !variableHandler.drawHelpBool;
          //Lisätään timeout varmistaaksemme, että arvo ei heti muutu takaisin.
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'i': //"Piirtoetäisyyden" nosto
      {
        if (!variableHandler.drawOnly) //Jos "fullscreen" piirto päällä 
        {
          //Vaihdetaan etäisyys piirtoon
          variableHandler.drawOnly = true;
          return;
        }
        else if (width > variableHandler.mouseDistance) //Muuten jos "piirtoetäisyys" ei ole suurempi kuin näytön leveys (Tehojen säästöä) 
        {
          //Lisää "piirtoetäisyyttä" 10:nellä
          variableHandler.mouseDistance += 10f;
          return;
        }
        else  //Muuten ei tehdä mitään
        {
          return;
        }
      }
      case 'j': //Muotojen välien pienentäminen
      {
        if (variableHandler.separation > 5f) //Jos väli on suurempi kuin 5, että arvo ei ikinä osu nollaan (Jää muuten ikuiseen while looppiin)
        {
          //Pienennetään arvoa
          variableHandler.separation -= 5f;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'k': //Muotojen välien nostaminen
      {
        //Emme tarvitse täällä tarkastuksia, koska en oleta, että kukaan normaali käytössä menisi ylärajasta läpi...
        //Lisätään arvoa
        variableHandler.separation += 5f;
        return;
      }
      case 'l': //Noisen käytön vaihto
      {
        if (variableHandler.timeout == 0) //Jos näppäimet ovat pois timeoutilta
        {
          //Muutetaan arvoa
          variableHandler.drawNoise = !variableHandler.drawNoise;
          //Lisätään timeouttia varmistaaksemme, että arvo ei heti muutu takaisin
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'm': // Alpha arvon lisäämien
      {
        if (variableHandler.a >= 240) //Alpha ei saa olla korkeammalla kuin tietty arvo, joten meidän täytyy filteroida
        {
          return;
        }
        else
        {
          //Muuten voimme lisätä alpha arvoa
          variableHandler.a += 16;
          return;
        }
      }
      case 'n': //Alpha arvon pienentäminen
      {
        if (variableHandler.a >= 16) //Alphan arvo ei saa mennä negatiiviseksi, joten meidän täytyy filteroida
        {
          //Tässä tapauksessa voimme vähentää alphaa
          variableHandler.a -= 16;
          return;
        }
        else
        {
          return;
        } 
      }
      case 'o': //Vaihtaminen linjoista pisteisiin ja päinvastoin
      {
        if (variableHandler.timeout == 0) //Jos näppäimet eivät ole timeoutilla
        {
          //Vaihdetaan muuttujan arvo
          variableHandler.drawPoints = !variableHandler.drawPoints;
          //Lisätään timeouttia varmistaaksemme, että arvo ei heti vaihdu takaisin
          variableHandler.timeout += 10;
          return;
        }
        else
        {
          return; 
        }
      }
      case 'r': //Arvojen "normalointi" nappi, eli reset-nappi, jota en muistanut itse ja en ollut documentoinut minnekkään...
      {
          variableHandler.mouseDistance = 50f;
          variableHandler.separation = 40f;
          variableHandler.corners = 8;
      }
      case 'u': //"Piirtoetäisyyden" pienentäminen
      {
        if (variableHandler.mouseDistance >= 20f) //Jos "piirtoetäisyys" on suurempi tai yhtäsuuri kun 20
        {
          //Pienennetään "piirtoetäisyytä"
          variableHandler.mouseDistance -= 10f;
          return;
        }
        else if (variableHandler.mouseDistance == 10f) //Jos "piirtoetäisyys" on 10, vaihdetaan "fullscreen" piirtoon
        {
          variableHandler.drawOnly = false;
          return;
        }
        else //Muuten ei tehdä mitään
        {
          return;
        }
      }
      case 'w': //Vaihto normaalin ja "wave" piirron välillä, jota en ole implementoinut yhtään missään....
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
