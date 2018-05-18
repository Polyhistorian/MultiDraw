class VariableHandler
{
  float mouseDistance = 50f;
  float separation = 40f;
  float size = 40;
  boolean drawOnly = true;
  boolean drawSphereBool = false;
  boolean drawHelpBool = false;
  boolean drawPoints = true;
  boolean drawNoise = true;
  int a = 64;
  int c = 0;
  int corners = 8;
  int timeout = 0;
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
  CirclePoints circlePoints;
  CirclePointsNoise circlePointsNoise;

  void setup() 
  {
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
    circlePoints = new CirclePoints();
    circlePointsNoise = new CirclePointsNoise();
  }
}
