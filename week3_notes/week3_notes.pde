//// ! BUTTON USING MOUSECLICKED !

//float lineX = 100;
//float rectX = 100;
//float rectY = 120;
//float rectWidth = 40;
//float rectHeight = 60;
//color bgColor = color(220, 100, 200);

//boolean buttonIsClicked = false;

//void setup() 
//{
//  size(300, 500);
//}

//void draw() 
//{
//  if (buttonIsClicked) // Could also be wrote as "if (buttonIsClicked == true) {...}"
//  {
//    bgColor = color(0, 100, 200);
//  }
//  else
//  {
//    bgColor = color(220, 100, 200);
//  }
  
//  background( bgColor);
  
//  line(lineX, 0, lineX, height);
  
//  rect(rectX, rectY, rectWidth, rectHeight);
//}

//void mouseClicked()
//{
//if ( mouseX > rectX && 
//     mouseX < rectX + rectWidth && 
//     mouseY > rectY && 
//     mouseY < rectY + rectHeight) 
//  {
//    if (buttonIsClicked) // Could also be wrote as "buttonIsClicked = !buttonIsClicked;"
//     {
//       buttonIsClicked = false;
//     } 
//     else 
//     {
//       buttonIsClicked = true;
//     }
//  }

//  println(buttonIsClicked);
//}

/////////////////////////////////////////////////////////////////////////////////////////////////////

//// ! CARDINAL MOVEMENT !

//float x, y, xSpeed, ySpeed, speed;

//float buttonLeftX, buttonRightX, buttonForwardX, buttonBackX, buttonStopX, buttonY, buttonW;

//void setup() 
//{
//  size(600, 500);

//  x = width/2;
//  y = height/2;
//  xSpeed = 0;
//  ySpeed = 0;

//  speed = 2;

//  buttonW = 50;
//  buttonLeftX = buttonW;
//  buttonY = 420;
//  buttonForwardX = buttonW * 3;
//  buttonBackX = buttonW * 5;
//  buttonRightX = buttonW * 7;
//  buttonStopX = buttonW * 9;
//}

//void draw() 
//{
//  background(100, 200, 144);

//  drawSquare();

//  drawButtons();
//}

//void drawSquare() 
//{
//  fill(230, 180, 10);
//  rect(x, y, 40 ,40);

//  x += xSpeed;
//  y += ySpeed;
//}

//void drawButtons() 
//{
//  fill(40, 60, 200);
//  rectMode(CORNER);
//  rect( buttonLeftX, buttonY, buttonW, buttonW);
//  rect( buttonForwardX, buttonY, buttonW, buttonW);
//  rect( buttonBackX, buttonY, buttonW, buttonW);
//  rect( buttonRightX, buttonY, buttonW, buttonW);
//  rect( buttonStopX, buttonY, buttonW, buttonW);
//  //draw arrows
//  fill(255);
//  float buttonMiddleOffset = buttonW * .5;
//  float triangleBuffer = buttonW * .1;
//  triangle( buttonLeftX + buttonMiddleOffset, buttonY + triangleBuffer, buttonLeftX + buttonMiddleOffset, buttonY + buttonW - triangleBuffer, buttonLeftX + triangleBuffer, buttonY + buttonMiddleOffset);
//  triangle( buttonRightX + buttonMiddleOffset, buttonY + triangleBuffer, buttonRightX + buttonMiddleOffset, buttonY + buttonW - triangleBuffer, buttonRightX + buttonW - triangleBuffer, buttonY + buttonMiddleOffset);
//  triangle( buttonForwardX + triangleBuffer, buttonY + buttonMiddleOffset, buttonForwardX + buttonW - triangleBuffer, buttonY + buttonMiddleOffset, buttonForwardX + buttonMiddleOffset, buttonY + triangleBuffer);
//  triangle( buttonBackX + triangleBuffer, buttonY + buttonMiddleOffset, buttonBackX + buttonW - triangleBuffer, buttonY + buttonMiddleOffset, buttonBackX + buttonMiddleOffset, buttonY + buttonW - triangleBuffer);

//  rect( buttonStopX + triangleBuffer*2, buttonY + triangleBuffer*2, buttonW - triangleBuffer*4, buttonW - triangleBuffer*4);
//}

//void mouseClicked() 
//{
//  if (mouseY > buttonY && mouseY < buttonY + buttonW) 
//  {
//    // all buttons are in a row, so test for Y first
//    if (mouseX > buttonLeftX && mouseX < buttonLeftX + buttonW) 
//    {
//      println("turn left clicked!");
//      xSpeed = -speed;
//      ySpeed = 0;
//    } 
//    else if (mouseX > buttonForwardX && mouseX < buttonForwardX + buttonW) 
//    {
//      // forward clicked!
//      ySpeed = -speed;
//      xSpeed = 0;
//    } 
//    else if (mouseX > buttonBackX && mouseX < buttonBackX + buttonW) 
//    {
//      // backward clicked!
//      ySpeed = speed;
//      xSpeed = 0;
//    } 
//    else if (mouseX > buttonRightX && mouseX < buttonRightX + buttonW) 
//    {
//      // turn right clicked!
//      xSpeed = speed;
//      ySpeed = 0;
//    } 
//    else if (mouseX > buttonStopX && mouseX < buttonStopX + buttonW) 
//    {
//      xSpeed = 0;
//      ySpeed = 0;
//    }
//  }
//}

/////////////////////////////////////////////////////////////////////////////////////////////////////

// ! VEHICLE MOVEMENT !

PVector carDirection, pos;
float speed, turnSpeed;
float carW, carH;

float buttonLeftX, buttonRightX, buttonForwardX, buttonBackX, buttonY, buttonW;

void setup() {
  size(600, 400);
  carDirection = new PVector(1, 0);
  pos = new PVector(300, 200);

  speed = .2;
  turnSpeed = 10; // in degrees
  turnSpeed *= TWO_PI/360; // in radians

  carW = 30;
  carH = 60;

  
  buttonW = 50;
  buttonLeftX = buttonW;
  buttonY = 320;
  buttonForwardX = buttonW * 3;
  buttonBackX = buttonW * 5;
  buttonRightX = buttonW * 7;
}
void draw() {
  background(100, 100, 244);

  drawCar();

  moveCar();

  drawButtons();
}
void drawCar() {
  fill(255);
  pushMatrix(); // Adds a layer with a new (0, 0) location according to "translate" as a different layer.
  translate(pos.x, pos.y);
  rotate( carDirection.heading() + HALF_PI ); // "HALF_PI" = 90 degrees.
  rectMode(CENTER); // Draws a rectangle at the new (0, 0) location.
  rect(0, 0, carW, carH );
  popMatrix(); // Returns to original layer with original (0, 0) location.
}
void moveCar() {
  PVector toMove = new PVector(carDirection.x, carDirection.y);
  toMove.mult(speed);
  pos.add( toMove );
}
void drawButtons() {
  fill(40, 60, 200);
  rectMode(CORNER);
  rect( buttonLeftX, buttonY, buttonW, buttonW);
  rect( buttonForwardX, buttonY, buttonW, buttonW);
  rect( buttonBackX, buttonY, buttonW, buttonW);
  rect( buttonRightX, buttonY, buttonW, buttonW);
  //draw arrows
  fill(255);
  float buttonMiddleOffset = buttonW * .5;
  float triangleBuffer = buttonW * .1;
  triangle( buttonLeftX + buttonMiddleOffset, buttonY + triangleBuffer, buttonLeftX + buttonMiddleOffset, buttonY + buttonW - triangleBuffer, buttonLeftX + triangleBuffer, buttonY + buttonMiddleOffset);
  triangle( buttonRightX + buttonMiddleOffset, buttonY + triangleBuffer, buttonRightX + buttonMiddleOffset, buttonY + buttonW - triangleBuffer, buttonRightX + buttonW - triangleBuffer, buttonY + buttonMiddleOffset);
  triangle( buttonForwardX + triangleBuffer, buttonY + buttonMiddleOffset, buttonForwardX + buttonW - triangleBuffer, buttonY + buttonMiddleOffset, buttonForwardX + buttonMiddleOffset, buttonY + triangleBuffer);
  triangle( buttonBackX + triangleBuffer, buttonY + buttonMiddleOffset, buttonBackX + buttonW - triangleBuffer, buttonY + buttonMiddleOffset, buttonBackX + buttonMiddleOffset, buttonY + buttonW - triangleBuffer);
}
void mouseClicked() {
  if (mouseY > buttonY && mouseY < buttonY + buttonW) {
    // all buttons are in a row, so test for Y first
    if (mouseX > buttonLeftX && mouseX < buttonLeftX + buttonW) {
      println("turn left clicked!");
      carDirection.rotate(-turnSpeed);
    } else if (mouseX > buttonForwardX && mouseX < buttonForwardX + buttonW) {
      // forward clicked!
      speed += .2;
    } else if (mouseX > buttonBackX && mouseX < buttonBackX + buttonW) {
      // backward clicked!
      speed -= .2;
    } else if (mouseX > buttonRightX && mouseX < buttonRightX + buttonW) {
      // turn right clicked!
      carDirection.rotate(turnSpeed);
    }
  }
}
