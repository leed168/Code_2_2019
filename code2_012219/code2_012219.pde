float posX = 100;

void setup()
{
  size(500,500);
}

void draw()
{
  background(0);
  ellipse(posX, height/2, 25, 25); 
  posX += 5;
  if(posX > 400)
  {
    posX -= 5;
    posX += -5;
  }
}
