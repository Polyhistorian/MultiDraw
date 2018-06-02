class VariableHandler
{
  float mouseDistance = 50f; //"Piirtoetäisyys"
  float separation = 40f; //Muotojen väli
  float size = 40; //Lopulta oikeastaan käyttämättömäksi jäänyt arvo, jonka oli tarkoitus hallita muotojen suuruutta
  boolean drawOnly = true; //"Fullscreen" vai "Piirtoetäisyys", true == "piirtoetäisyys", false == "fullscreen"
  boolean drawSphereBool = false; //Piirretäänkö ympyröitä, jos ei niin muita muotoja
  boolean drawHelpBool = false; //Piirretäänkö apu ikkunaa, jos ei niin muotoja
  boolean drawPoints = true; //Piirretäänkö pisteittäin
  boolean drawNoise = true; //Piirretäänkö noisella
  boolean drawWave = true; //Piirretäänkö alloitain _!Ei implementoitu!_
  int a = 64; //Alpha arvo
  int c = 0; //Väri arvo
  int corners = 8; //Kulmien määrä
  int timeout = 0; //Timeout, jos on sellainen
  // Erilliset logiikka "piirien" ja piirtämistyökalujen referenssit 
  DrawOctagon drawOctagon;
  DrawHeptagon drawHeptagon;
  DrawHexagon drawHexagon;
  DrawPentagon drawPentagon;
  DrawSquare drawSquare;
  DrawTriangle drawTriangle;
  DrawCircle drawCircle;
  KeyHandler keyHandler;
  DrawHelp drawHelp;
  LinePoints linePoints;
  LinePointsNoise linePointsNoise;
  LinePointsWave linePointsWave;
  CirclePoints circlePoints;
  CirclePointsNoise circlePointsNoise;

  void setup() 
  {
    //Uusitaan äsken määritetyt referenssit, tarvitsee kutsua vain kerran
    drawOctagon = new DrawOctagon();
    drawHeptagon = new DrawHeptagon();
    drawHexagon = new DrawHexagon();
    drawPentagon = new DrawPentagon();
    drawSquare = new DrawSquare();
    drawTriangle = new DrawTriangle();
    drawCircle = new DrawCircle();
    keyHandler = new KeyHandler();
    drawHelp = new DrawHelp();
    linePoints = new LinePoints();
    linePointsNoise = new LinePointsNoise();
    linePointsWave = new LinePointsWave();
    circlePoints = new CirclePoints();
    circlePointsNoise = new CirclePointsNoise();
  }
}
