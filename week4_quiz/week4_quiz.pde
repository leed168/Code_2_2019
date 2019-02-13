// (wip)

//button[] Button = new bu

// ! CIRCLE SIZE VARIABLES
int circleX = 250; 
int circleY = 250;
int circleSize = 100;

// ! CIRCLE COLOR VARIABLES
color circleColor0 = color(133, 193, 233);
color circleColor1 = color(162, 217, 206); 
color circleHighlight = color(118, 215, 196);

// ! BOOLEAN VARIABLES
boolean onCircle = false;

// ! SETUP FUNCTION
void setup() 
{
  size(500, 500);
  
  //button[0] = new button();
}

// ! DRAW FUNCTION
void draw() 
{
  background(127, 179, 213);
  
  button();
  
  //for (int i = 0; i < 2; i++)
  //{
  //  button[i];
  //}
}

// ! BUTTON CLASS
void button()
{
  noStroke();
    
  if (onCircle) 
  {
    stroke(circleHighlight);
    strokeWeight(7.5);
  } 
  else 
  {
    noStroke();
  }
  
  fill(circleColor0);
  ellipse(circleX, circleY, circleSize, circleSize);
  
  if ( overCircle(circleX, circleY, circleSize) ) 
  {
    onCircle = true;
  }  
  else 
  {
    onCircle = false;
  }
}

// ! MOUSECLICKED FUNCTION
void mouseClicked() 
{
  if (onCircle) 
  {
    circleColor0 = circleColor1;
  }
}

// ! BOOLEAN FUNCTION
boolean overCircle(int x, int y, int diameter) 
{
  float disX = x - mouseX;
  float disY = y - mouseY;
  
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) 
  {
    return true;
  } 
  else 
  {
    return false;
  }
}
