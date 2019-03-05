//// Percentage states.

//char[] states = {'A', 'B', 'C', 'D', 'E', 'F'};
//float[] range = {.2, .2, .1, .1, .05, .15};
//float rand = random(1);

//println(rand);
//float current = 0;

//for (int i = 0; i < range.length; i++)
//{
//  // cycle through every range value
//  current += range[i];
//  if(rand < current)
//  {
//    println(states[i]);// set the state
//    break; // cancel the for loop
//  }
//}

/////////////////////////////////////////////////////////
///*      home  school  work  boo's house
// Home    .3    .3      .2    .2 
// School  .3    .1      .3    .3  
// Work    .7    0       .15   .15
// Boo's   .1    .2      .3    .4
// */
//String[] places = { "Home", "School", "work", "boos"};
//int STATE = 1; // 1 is school
//float[][] movementChance = {
//  {.3, .3, .2, .2 }, 
//  {.3, .1, .3, .3 }, 
//  {.7, 0, .15, .15}, 
//  {.1, .2, .3, .4}, 
//};
////println(movementChance[0][1]);
//for (int hours = 0; hours<24; hours++) {
//  float rand = random(1);
//  float current = 0;
//  float[] whereToGoPercent = movementChance[STATE];
//  for (int i = 0; i<whereToGoPercent.length; i++) {
//    current += whereToGoPercent[i];
//    if (rand < current) {
//      STATE = i;
//      break;
//    }
//  }
//  println(hours+1, places[STATE]);
//}

//////////////////////////////////////////////////

PVector squarePosition = new PVector(30, 225);
PVector squareVelocity = new PVector(0, -3);
PVector squareAcceleration = new PVector(0, .1);

void setup()
{
  size(900, 900);
  noStroke();
}

void draw()
{
  background(120, 50, 130);
  rect(squarePosition.x, squarePosition.y, 50, 50);
  squarePosition.add(squareVelocity);
  squareVelocity.add(squareAcceleration);
  squareAcceleration.rotate(radians(1));
}

void mousePressed()
{
  squarePosition = new PVector(30, 255);
  squareVelocity = new PVector(5, 03);
  squareAcceleration = new PVector(0, .1);
}
