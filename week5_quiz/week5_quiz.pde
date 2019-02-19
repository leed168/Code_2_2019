int startTime;

// ! VARIABLES FOR QBUTTON !
float QbuttonX = 100;
float QbuttonY = 300;
float QbuttonW = 50;
float QbuttonH = 50;

// ! VARIABLES FOR WBUTTON !
float WbuttonX = 175;
float WbuttonY = 300;
float WbuttonW = 50;
float WbuttonH = 50;

// ! VARIABLES FOR EBUTTON !
float EbuttonX = 250;
float EbuttonY = 300;
float EbuttonW = 50;
float EbuttonH = 50;

// ! VARIABLES FOR RBUTTON !
float RbuttonX = 325;
float RbuttonY = 300;
float RbuttonW = 50;
float RbuttonH = 50;

// ! VARIABLES FOR BOOLEANS !
boolean onQbutton = false;
boolean onWbutton = false;
boolean onEbutton = false;
boolean onRbutton = false;

// ! VARIABLES FOR COLORS !
color beforeOnQ = color(50);
color afterOnQ = color(100);

color beforeOnW = color(50);
color afterOnW = color(100);

color beforeOnE = color(50);
color afterOnE = color(100);

color beforeOnR = color(50);
color afterOnR = color(100);

// ! SETUP !
void setup()
{
  size(500, 500);
  
  startTime = millis();
}

// ! DRAW !
void draw()
{
  background(0);
  
  Qbutton();
  Wbutton();
  Ebutton();
  Rbutton();
}

// ! Q BUTTON CLASS !
void Qbutton()
{
  if (mouseX >= QbuttonX && mouseX <= QbuttonX + QbuttonW && mouseY >= QbuttonY && mouseY <= QbuttonY + QbuttonH) 
  {
    fill(afterOnQ);
    onQbutton = true;
  } else {
    fill(beforeOnQ);
    onQbutton = false;
  }  
  
  noStroke();
  rect(QbuttonX, QbuttonY, QbuttonW, QbuttonH);
  
  fill(255, 0, 0);
  textSize(20);
  text("Q", 110, 325);
}

// ! W BUTTON CLASS !
void Wbutton()
{
  if (mouseX >= WbuttonX && mouseX <= WbuttonX + WbuttonW && mouseY >= WbuttonY && mouseY <= WbuttonY + WbuttonH) 
  {
    fill(afterOnW);
    onWbutton = true;
  } else {
    fill(beforeOnW);
    onWbutton = false;
  }  
  
  noStroke();
  rect(WbuttonX, WbuttonY, WbuttonW, WbuttonH);
  
  fill(255, 0, 0);
  text("W", 185, 325);
}

// ! E BUTTON CLASS !
void Ebutton()
{
  if (mouseX >= EbuttonX && mouseX <= EbuttonX + EbuttonW && mouseY >= EbuttonY && mouseY <= EbuttonY + EbuttonH) 
  {
    fill(afterOnE);
    onEbutton = true;
  } else {
    fill(beforeOnE);
    onEbutton = false;
  }  
  
  noStroke();
  rect(EbuttonX, EbuttonY, EbuttonW, EbuttonH);
  
  fill(255, 0, 0);
  text("E", 260, 325);
}

// ! R BUTTON CLASS !
void Rbutton()
{
  if (mouseX >= RbuttonX && mouseX <= RbuttonX + RbuttonW && mouseY >= RbuttonY && mouseY <= RbuttonY + RbuttonH) 
  {
    fill(afterOnR);
    onRbutton = true;
  } else {
    fill(beforeOnR);
    onRbutton = false;
  }  
  
  noStroke();
  rect(RbuttonX, RbuttonY, RbuttonW, RbuttonH);
  
  fill(255, 0, 0);
  text("R", 335, 325);
}

// ! MOUSECLICKED !
void mouseClicked()
{
  if (onQbutton == true)
  {
    println("Q Button Pressed");
    beforeOnQ = color(255);
    afterOnQ = color(255);
    if (millis() > 3000) 
  {
    beforeOnQ = color(50);
    afterOnQ = color(100);
  }
  }
  
  if(onWbutton == true)
  {
    println("W Button Pressed");
    beforeOnW = color(255);
    afterOnW = color(255);
  }
  
  if(onEbutton == true)
  {
    println("E Button Pressed");
    beforeOnE = color(255);
    afterOnE = color(255);
  }
  
  if(onRbutton == true)
  {
    println("R Button Pressed");
    beforeOnR = color(255);
    afterOnR = color(255);
  }
}

// ! KEYTYPED !
void keyTyped()
{
  switch(key)
  {
    case 'q':
    println("Q Button Pressed");
    beforeOnQ = color(255);
    afterOnQ = color(255);
    break;
    case 'w':
    println("W Button Pressed");
    beforeOnW = color(255);
    afterOnW = color(255);
    break;
    case 'e':
    println("E Button Pressed");
    beforeOnE = color(255);
    afterOnE = color(255);
    break;
    case 'r':
    println("R Button Pressed");
    beforeOnR = color(255);
    afterOnR = color(255);
    break;
  }
}
