class DrawHelp
{
  
  void draw()
  {
    if (width > 540)
    {
      //Piirretään tausta jolla teksi on edes vähän näkyvämpää
      stroke(0, 0, 50);
      fill(240, 24.14, 11.37, variableHandler.a);
      rect(0, 0, width, height);
      //En ole edelleenkään varma kumpaa teksti käyttää väri, joten tässä molemmat
      stroke(variableHandler.c, 100, 100);
      fill(variableHandler.c, 100, 100);
      //"Otsikko"
      textSize(48);
      textAlign(CENTER, TOP);
      text("Help Center", width/2, 0);
      //"Apulinjat"
      textSize(16);
      textAlign(CENTER, BOTTOM);
      text("1.", width/2, 100);
      text("Inprogram help (Can be toggled with H)", width/2, 120);
      text("2.", width/2, 160);
      text("Noise (Can be toggled with L)", width/2, 180);
      text("3.", width/2, 220);
      text("Point or Line drawing (Can be toggled with O)", width/2, 240);
      text("4.", width/2, 280);
      text("Sphere drawing (Can be toggled with D)", width/2, 300);
      text("5.", width/2, 340);
      text("Multiple Shapes (Amount of corners can be increased with + and decreased with -)", width/2, 360);
      text("6.", width/2, 400);
      text("Drawing shapes only around the mouse or fullscreen (Distance can be increased with I and decreased with U, automaticly changes to fullscreen with distance == 0)", width/2, 420);
      text("7.", width/2, 460);
      text("Altering separation of the shapes (Separation can be increased with K and decreased with J)", width/2, 480);
      text("8.", width/2, 520);
      text("Variable amounts of fading (Of which speed can be increased with M and decreased with N)", width/2, 540);
      //Nämä värjäykset aiheuttavat ongelmia muualla, joten poistetaan ne
      noStroke();
      noFill();
    }
  }
}
