class Bubble
{
  int x;
  int y;
  int myVar;
  int[] bColor;

  Bubble()
  {
    x = (int)(Math.random()*width);
    y = (int)(Math.random()*height*2);
    myVar = (int)(Math.random()*70)+30;
    bColor = new int[4];
    for (int i =0; i < bColor.length; i++)
    {
      bColor[i] = (int)(Math.random()*150);
    }
  }

  void show()
  {
    noStroke();
    fill(bColor[0], bColor[1], bColor[2], bColor[3]);
    ellipse(x, y, myVar, myVar);
  }

  void rise_wiggle()
  {
    float rFactor = 0.08;
    float r = myVar * rFactor + ((float)Math.random());
    int w = (int)(Math.random()*5)-2;
    x += w;
    y -= r;
  }
} 
