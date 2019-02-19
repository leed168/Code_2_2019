// ! Switch the background to green after so many seconds !

float totalTime = 3;
int startTime;

void setup() 
{
  size(400, 600);
  totalTime = totalTime * 1000; // convert to milliseconds!
  startTime = millis();
}

void draw() 
{
  //demo1();
  //demo2();
  demo3();
  
  println(millis());

}

void demo1() 
{
  if (millis() > 3000) 
  {
    background(0, 200, 20);
  }
}

void demo2() 
{
  if (millis() > totalTime) 
  {
    background(0, 200, 20);
  }
}

void demo3() 
{
  if (millis() > totalTime + startTime) 
  {
    background(0, 200, 20);
  }
}

///////////////////////////////////////////////////////////

////when I press a key, change the background for 3 seconds, then change it back
//float startTime, endTime;
//float totalTime = .5;
//color normalColor, activeColor;
//boolean isActive = false;

//void setup() 
//{
//  size(600, 300);
//  normalColor = color(230, 10, 30);
//  activeColor = color(130, 100, 230);
//  totalTime *= 1000; // switch to milliseconds
//}

//void draw() 
//{
//  if (isActive) 
//  {
//    background(activeColor);
//    //switchBackEndTime();
//    switchBackStartTime();
//  } 
//  else 
//  {
//    background(normalColor);
//  }
//}

//void keyTyped() 
//{
//  println(millis());
//  isActive = true;
//  // Timing variables below
//  startTime = millis();
//  endTime = millis() + totalTime;
//}

//void switchBackEndTime() 
//{
//  if (millis() > endTime) 
//  {
//    isActive = false;
//  }
//}

//void switchBackStartTime() 
//{
//  if (millis() - startTime > totalTime) 
//  {
//    isActive = false;
//  }
//}

///////////////////////////////////////////////////////////

//int START_SCREEN = 0;
//int PLAY_SCREEN = 1;
//int END_SCREEN = 2;
//int MAP_SCREEN = 3;
//int SETTINGS_SCREEN = 4;
//int STATE = START_SCREEN;
//void setup() {
//  size(500, 500);
//}
//void draw() {
//  switch (STATE) {
//    case 0: // start screen
//      showStartScreen();
//    break;
//    case 1: // play screen
//      showPlayScreen();
//    break;
//    case 2: // end screen
//      showEndScreen();
//    break;
//    case 3: // map screen
//      showMapScreen();
//    break;
//    case 4: // setting screen
//      background(255);
//    break;
//  }
//}
//void keyTyped() 
//{
//  switch(key) 
//  {
//    case 'q':
//      STATE = START_SCREEN;
//    break;
//    case 'w':
//      STATE = END_SCREEN;
//    break;
//    case 'e':
//      STATE = MAP_SCREEN;
//    break;
//    case 'r':
//      STATE = PLAY_SCREEN;
//    break;
//    case 't':
//      STATE = SETTINGS_SCREEN;
//    break;
//  }
//}
//void showStartScreen(){
//  background(200);
//  textAlign(CENTER);
//  textSize(32);
//  text("Loading!", 250, 250);
//}
//void showPlayScreen(){
//  background(200, 200, 10);
//  textAlign(CENTER);
//  textSize(32);
//  text("Playing!", sin(frameCount*.02)*200 + 250, 250);
//}
//void showEndScreen(){
//  background(10);
//  textAlign(CENTER);
//  textSize(32);
//  text("END!", 250, 250);
//}
//void showMapScreen(){
//  background(50, 200, 10);
//  textAlign(CENTER);
//  textSize(32);
//  text("MAP!", 250, 250);
//}
