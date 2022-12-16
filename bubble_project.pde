Bubble [] arrayBubble; //<>//
ArrayList <Bubble> listBubble;
int bubbleNum = 500;
int bubbleCounter = 50;
int bubbleSec = 8;
int bubbleColor = 12;

void setup()
{
  size(700, 900);
  frameRate(50);
  listBubble = new ArrayList <Bubble>();
  for (int i=0; i < bubbleNum; i++)
  {
    listBubble.add(new Bubble());
    bubbleColor ++;
  }
}

void draw()
{
  background(255);
  for (int i=listBubble.size()-1; i>=0; i--)
  {
    listBubble.get(i).rise_wiggle();
    listBubble.get(i).show();
    if (listBubble.get(i).y < 0)
    {
      listBubble.remove(i);
    }
  }
  textSize(20);
  fill(0);
  text("amount of bubbles: " + listBubble.size(), width/2-50, height-50);
}
