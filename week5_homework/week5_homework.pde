// LIST OF FUNCTIONS:
// UP ARROW = LOOK UP
// DOWN ARROW = LOOK DOWN
// LEFT ARROW = LOOK LEFT
// RIGHT ARROW = LOOK RIGHT
// CLICK ON SPRITE = OPEN

PImage idle, up, down, left, right, open, closed;
int time;

void setup()
{
  size(500, 500);
  frameRate(5);

  idle = loadImage("i_idle.png");
  up = loadImage("i_up.png");
  down = loadImage("i_down.png");
  left = loadImage("i_left.png");
  right = loadImage("i_right.png");
  open = loadImage("i_open.png");
  closed = loadImage("i_closed.png");
}

void draw()
{
  image(idle, 125, 125, width/2, height/2);
  
  if (millis() - time >= 1000)
  {
    image(closed, 125, 125, width/2, height/2);
    time = millis();
  }
}

void keyPressed()
{
  if (keyCode == UP)
  {
    image(up, 125, 125, width/2, height/2);
  }
  if (keyCode == DOWN)
  {
    image(down, 125, 125, width/2, height/2);
  }
  if (keyCode == LEFT)
  {
    image(left, 125, 125, width/2, height/2);
  }
  if (keyCode == RIGHT)
  {
    image(right, 125, 125, width/2, height/2);
  }
}

void mousePressed()
{
  if (mouseX >= 125 && mouseX <= 375 && 
      mouseY >= 125 && mouseY <= 375)
  image(open, 125, 125, width/2, height/2);
}
