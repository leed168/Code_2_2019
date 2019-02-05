// ! VARIABLES !
float fallSpeed = -10;
float xPosition = 125;
float rainW = 5;
float rainH = 10;
color rainStart, rainEnd;


void setup()
{
  size(250,500);
  
  rainStart = color(0, 0, 255);
  //rainEnd = color(
}

void draw()
{
  background(135, 206, 250);
  
  raindrops();
}

void raindrops()
{
  fill(0, 0, 255);
  noStroke();
  
  ellipse(xPosition, fallSpeed, rainW, rainH);
  fallSpeed += 5;
  if(fallSpeed > 510)
  {
    fallSpeed = -10;
  }
}
