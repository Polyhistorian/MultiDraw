class LinePoints
{
 void draw(float xStart, float yStart, float xEnd, float yEnd) //<>//
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
  while (xStart >= xEnd) //<>//
  {
    break;
  }
 }
 
 void posneg(float xStart, float yStart, float xEnd, float yEnd)
 {
   while (xStart >= xEnd) //<>//
   {
    break;
   }
 }
 
 void negpos(float xStart, float yStart, float xEnd, float yEnd)
 {
   while (xStart <= xEnd) //<>//
   {
    break;
   }
 }
 
 void negneg(float xStart, float yStart, float xEnd, float yEnd)
 {
   while (xStart <= xEnd) //<>//
   {
    break;
   }
 }
 void eqpos(float xStart, float yStart, float xEnd, float yEnd)
 {
   float yCurrent = yStart;
   while (yCurrent >= yEnd) //<>//
   {
     point(xStart, yCurrent);
     yCurrent--;
   }
 }
 void eqneg(float xStart, float yStart, float xEnd, float yEnd)
 {
   float yCurrent = yStart;
   while (yCurrent <= yEnd)
   {
     point(xStart, yCurrent);
     yCurrent++;
   }
 }
 void poseq(float xStart, float yStart, float xEnd, float yEnd)
 {
   float xCurrent = xStart;
   while (xCurrent >= xEnd)
   {
     point(xCurrent, yStart);
     xCurrent--;
   }
 }
 void negeq(float xStart, float yStart, float xEnd, float yEnd)
 {
   float xCurrent = xStart;
   while (xCurrent <= xEnd)
   {
     point(xCurrent, yStart);
     xCurrent++;
   }
 }
 void eqeq(float xStart, float yStart)
 {
   point(xStart, yStart);
 }
}
