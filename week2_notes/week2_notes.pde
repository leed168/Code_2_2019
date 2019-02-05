// ! Circle follow mouse.

float xPos, yPos;
float xSpeed, ySpeed;
float speed = 3;

void setup(){
  size(600, 400);
  noStroke();
}
void draw() {
  background(213,89,120);
  ellipse(xPos, yPos, 20, 20);
  
  if (mouseX > xPos) {
    xSpeed = speed;
  } else {
    xSpeed = -speed;
  }
  if (mouseY > yPos) {
    ySpeed = speed;
  } else {
    ySpeed = -speed;
  }
  xPos += xSpeed;
  yPos += ySpeed;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//// ! Circle follow using PVector.

//PVector pos, velocity; // PVector is a class to describe a 2 or 3 dimensional vector.
//float speed = 3;

//void setup(){
//  size(600, 400);
//  noStroke();
//  pos = new PVector();
//  velocity = new PVector();
//}
//void draw() {
//  background(213,89,120);
//  ellipse(pos.x, pos.y, 20, 20);
  
//  velocity.x = mouseX - pos.x; // Distance/difference between two objects, in this case the mouse and the ellipse. (Pythagorean theorem)
//  velocity.y = mouseY - pos.y;
//  velocity.normalize(); // Normalize changes the length of the vector to 1 pixels. Without normalizing the velocity, the object would move faster dialogonally than horizontally/vertically
//  velocity.mult(speed); // Speed determines how fast the object moves towards the mouse.
//  pos.add(velocity);
//}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//// ! PVector example.

//PVector pos1, pos2;
//size(400, 500);

//float percentage = 0.5; // This value changes the distance of the circle on the line using PVector.

//pos1 = new PVector(20, 200);
//pos2 = new PVector(350, 200);

//line(pos1.x, pos1.y, pos2.x, pos2.y);

//float distance = pos2.x - pos1.x;
//float circlePos = distance * percentage + pos1.x; // Without pos1.x, the circle would position above the line in relation to the X axis.

//ellipse(circlePos, 200, 10, 10);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//// ! Circle moves to cursor location on click.

//  PVector pos, velocity, target;
//float speed = 3;
//boolean isMoving = false;

//void setup() {
//  size(600, 400);
//  noStroke();
//  pos = new PVector( 200, 300 );
//  velocity = new PVector();
//  target = new PVector();
//}

//void draw() {
//  background(213, 89, 120);
//  fill(255);
//  pushMatrix();
//  translate(pos.x, pos.y);
//  rotate( velocity.heading() );
//  triangle(0, 0, -20, 5, -20, -5);
//  popMatrix();

//  if (isMoving == true) { // Moves the object using PVector.
//    velocity.x = target.x - pos.x;
//    velocity.y = target.y - pos.y;
//    velocity.normalize();
//    velocity.mult(speed);
//    pos.add(velocity);
    
//    fill(0);
//    ellipse(target.x, target.y, 5, 5);
    
//    if (dist(pos.x, pos.y, target.x, target.y) < speed) {
//      isMoving = false;
//    }
//  }
//}

//void mouseClicked() { // This runs the movement function when mouse is clicked.
//  target.x = mouseX;
//  target.y = mouseY;
//  isMoving = true; // This changes the boolean for isMoving to true, allowing the if statement above to run.
//}
