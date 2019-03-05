// ! VARIABLES !
float circleW = 50;
float circleH = 50;

PVector pos, vel, grav;

boolean holdingBall;

// ! SETUP FUNCTION !
void setup()
{
  size(500, 500);
  
  pos = new PVector(width/2, height/2);
  vel = new PVector(50, 0);
  grav = new PVector(0, 1);
  
  holdingBall = false;
}

// ! DRAW FUNCTION !
void draw()
{
  // ! CIRCLE VISUALS !
  background(0);
  noStroke();
  ellipse(pos.x, pos.y, circleW, circleH);
  
  // ! CIRCLE BALL FUNCTION !
  pos.add(vel);
  vel.add(grav);
  
  if(height - circleH/2 < pos.y)
  {
    vel.y = vel.y * -0.5;
    pos.y = 475;
  }
  
  if(pos.x > width - circleW/2)
  {
    vel.x = vel.x * -0.5;
  }
  else if(pos.x < circleW/2)
  {
    vel.x = vel.x * -0.5;
  }
}

// ! MOUSEPRESSED FUNCTION !
void mousePressed()
{
  if (mouseX == pos.x && mouseY == pos.y)
  {
    holdingBall = true;
    println("holding ball"); //f
  }
}
