color bgColor1;
color bgColor2;
color bgColor3;
color bgColor4;
color circleColor1;
color circleColor2;
color rectColor1;
color rectColor2;

boolean onCircle = false;
boolean onRect = false;

void setup()
{
  size(500,500);
}

void draw()
{
  bgColor1 = color(149,165,166);
  bgColor2 = color(245,176,65);
  
  background(bgColor1);
  fill(189,196,199);
  noStroke();
  ellipse(width/4,height/2,100,100);
  rect(width/2, height/2,100,100);
  
  if (onCircle)
  {
    fill(circleColor2);
  }
  else
  {
    fill(circleColor1);
  }
  
}

void mouseClicked()
{
  if (onCircle)
  {
    bgColor1 = bgColor2;
  }
}

boolean onCircleBool(
