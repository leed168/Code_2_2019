float x;
float y;
float lerpAmt = 0.025;

PImage charArt;

void setup()
{
  size(500,500);
  
  charArt = loadImage("shaggy.png");
}

void draw()
{
  background(219,112,147);
  fill(255,20,147);
  noStroke();
  image(charArt,x,y,125,125);
  
  if(mousePressed)
  {
    x = lerp(x,mouseX,lerpAmt);
    y = lerp(y,mouseY,lerpAmt);
  }
}
