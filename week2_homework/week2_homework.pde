// ! VARIABLES FOR PLAYER !
float speedX = 100; // X-coordinate of the player.
float speedY = 100; // Y-coordinate of the player.

// ! VARIABLES FOR BUTTON 1 !
float button1X = 250;
float button1Y = 250 + 50;
float button1W = 50;
float button1H = 50;

// ! VARIABLES FOR BUTTON 2 !
float button2X = 250;
float button2Y = 250 - 50;
float button2W = 50;
float button2H = 50;

// ! VARIABLES FOR BUTTON 3 !
float button3X = 250 + 50;
float button3Y = 250;
float button3W = 50;
float button3H = 50;

// ! VARIABLES FOR BUTTON 4 !
float button4X = 250 - 50;
float button4Y = 250;
float button4W = 50;
float button4H = 50;

// ! VARIABLES FOR BUTTON ICONS !
float addedX1 = 246; // Trying to figure out a better way to add icons, because manually calculating the shape and location of a triangle takes too much time.
float addedY1 = 200;

//float addedX2;
//float addedY2;

//float addedX3;
//float addedY3;

//float addedX4;
//float addedY4;

// ! SETUP FUNCTION !
void setup()
{
  size(500, 500);
}

// ! DRAW FUNCTION !
void draw()
{
  noStroke();
  
  background(0);
  
  player();
  
  buttons();
}

// ! PLAYER CLASS !
void player()
{
  fill(255, 0, 0);
  rect(speedX, speedY, 50, 50);
}

// ! BUTTONS CLASS !
void buttons()
{
  // ! BUTTON 1 - ROLLOVER !
  if (mouseX >= button1X && mouseX <= button1X + button1W && mouseY >= button1Y && mouseY <= button1Y + button1H) 
  {
    fill(100);
  } else {
    fill(50);
  }  
  rect(button1X, button1Y, button1W, button1H);
  
  
  // ! BUTTON 2 - ROLLOVER + ICON !
  if (mouseX >= button2X && mouseX <= button2X + button2W && mouseY >= button2Y && mouseY <= button2Y + button2H) 
  {
    fill(100);
  } else {
    fill(50);
  }  
  rect(button2X, button2Y, button2W, button2H);
  
  fill(100);
  triangle(15 + addedX1, 37.5 + addedY1, 29 + addedX1, 10 + addedY1, 43 + addedX1, 37.5 + addedY1);
  
  // ! BUTTON 3 - ROLLOVER !
  if (mouseX >= button3X && mouseX <= button3X + button3W && mouseY >= button3Y && mouseY <= button3Y + button3H) 
  {
    fill(100);
  } else {
    fill(50);
  }  
  rect(button3X, button3Y, button3W, button3H);
  
  // ! BUTTON 4 - ROLLOVER !
  if (mouseX >= button4X && mouseX <= button4X + button4W && mouseY >= button4Y && mouseY <= button4Y + button4H) 
  {
    fill(100);
  } else {
    fill(50);
  }  
  rect(button4X, button4Y, button4W, button4H);
}

// ! CONTROLS USING MOUSEPRESSED !
void mousePressed()
{ 
  // ! DOWN CONTROL !
  if (mouseX >= button1X && mouseX <= button1X + button1W && mouseY >= button1Y && mouseY <= button1Y + button1H) 
  {
    speedY = speedY + 10;
    loop(); // I can't figure out why this doesn't loop.
  }
  
  // ! UP CONTROL !
  if (mouseX >= button2X && mouseX <= button2X + button2W && mouseY >= button2Y && mouseY <= button2Y + button2H) 
  {
    speedY = speedY - 10;
    loop();
  }
  
  // ! RIGHT CONTROL !
  if (mouseX >= button3X && mouseX <= button3X + button3W && mouseY >= button3Y && mouseY <= button3Y + button3H) 
  {
    speedX = speedX + 10;
    loop();
  }
  
  // ! LEFT CONTROL !
  if (mouseX >= button4X && mouseX <= button4X + button4W && mouseY >= button4Y && mouseY <= button4Y + button4H) 
  {
    speedX = speedX - 10;
    loop();
  }
}
