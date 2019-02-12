// ! VARIABLES FOR CIRCULAR BUTTON !
int circleX = 150;
int circleY = 250;
int circleSize = 100;
boolean circleRollover = false;

// ! VARIABLES FOR SQUARE BUTTON !
int squareX = 300;
int squareY = 200;
int squareSize = 100;
boolean squareRollover = false;

// ! SETUP FUNCTION !
void setup()
{
  size(500, 500);
}

// ! DRAW FUNCTION !
void draw()
{
  background(0);
  stroke(255);
  
  circularButton(); // ?
  //squareButton();
  
  //if (circleRollover) {
  //  println("Cirular button pressed");
  //} else if (squareRollover) {
  //  println("Square button pressed");
  //}
  
  if (mousePressed)
  {
    if (mouseX > squareX && mouseX < squareX + squareSize && mouseY > squareY && mouseY < squareY + squareSize)
    {
      fill(255);
      println("Square button pressed.");
    }
    else
    {
      fill(127.5);
      println("No button pressed.");
    }
  }
  
  rect(squareX, squareY, squareSize, squareSize);
}

//// ! UPDATE FUNCTION !
//void update(int x, int y) 
//{
//  if( onCircle(circleX, circleY, circleSize) ) 
//  {
//    circleRollover = true;
//    squareRollover = false;
//  } 
//  else if ( onSquare(squareX, squareY, squareSize, squareSize) ) 
//  {
//    squareRollover = true;
//    circleRollover = false;
//  } 
//  else 
//  {
//    circleRollover = false;
//    squareRollover = false;
//  }
//}

// ! CIRCULAR BUTTON !
void circularButton()
{
  fill(127.5);
  ellipse(circleX, circleY, circleSize, circleSize);
}

//// ! SQUARE BUTTON !
//void squareButton()
//{
//  fill(127.5);
//  rect(squareX, squareY, squareSize, squareSize);
//}

//// ! BOOLEAN FOR CIRCULAR BUTTON !
//boolean onCircle(int x, int y, int diameter)
//{
//  float disX = x - mouseX;
//  float disY = y - mouseY;
//  if(sqrt(sq(disX) + sq(disY)) < diameter/2 ) 
//  {
//    return true;
//  } 
//  else 
//  {
//    return false;
//  }
//}

//// ! BOOLEAN FOR SQUARE BUTTON !
//boolean onSquare(int x, int y, int width, int height) 
//{
//  if (mouseX >= squareX && mouseX <= squareX+width && mouseY >= squareY && mouseY <= squareY+height) 
//  {
//    return true;
//  } 
//  else 
//  {
//    return false;
//  }
//}
