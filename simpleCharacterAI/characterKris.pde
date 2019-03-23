// ---------------------------------------- ! VARIABLES !
PVector Vel, Pos;
int FrameNumber = 0;
float speed = 1;
// -------------------- states
int IdleState = 1;
int WalkDownState = 1;
int WalkUpState = 1;
int WalkRightState = 1;
int WalkLeftState = 1;
int CurrentState = IdleState;
// -------------------- idle
int IdleSpeed = 10;
PImage Idle = new PImage();
// -------------------- walk down
int WalkDownFrames = 4;
int WalkDownSpeed = 6;
PImage[] WalkDown = new PImage[WalkDownFrames];
// -------------------- walk up
int WalkUpFrames = 4;
int WalkUpSpeed = 6;
PImage[] WalkUp = new PImage[WalkUpFrames];
// -------------------- walk right
int WalkRightFrames = 4;
int WalkRightSpeed = 6;
PImage[] WalkRight = new PImage[WalkRightFrames];
// -------------------- walk left
int WalkLeftFrames = 4;
int WalkLeftSpeed = 6;
PImage[] WalkLeft = new PImage[WalkLeftFrames];

// ---------------------------------------- ! KRIS CLASS !
class Kris
{
  String[] StateNames = {"Idle", "WalkDown", "WalkUp", "WalkRight", "WalkLeft"};
  float[][] States =
    {
      {0.25, 0.25, 0.25, 0.25}, 
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25}
    };

// ---------------------------------------- ! KRIS !
  Kris()
  {
    Vel = new PVector(0, 0);
    Pos = new PVector(random(width), random(height));
    
    Idle = loadImage("Kris_WalkDown0.png");
    
    WalkDown[0] = loadImage("Kris_WalkDown0.png");
    WalkDown[1] = loadImage("Kris_WalkDown1.png");
    WalkDown[2] = loadImage("Kris_WalkDown2.png");
    WalkDown[3] = loadImage("Kris_WalkDown3.png");
    
    WalkUp[0] = loadImage("Kris_WalkUp0.png");
    WalkUp[1] = loadImage("Kris_WalkUp1.png");
    WalkUp[2] = loadImage("Kris_WalkUp2.png");
    WalkUp[3] = loadImage("Kris_WalkUp3.png");
    
    WalkRight[0] = loadImage("Kris_WalkRight0.png");
    WalkRight[1] = loadImage("Kris_WalkRight1.png");
    WalkRight[2] = loadImage("Kris_WalkRight2.png");
    WalkRight[3] = loadImage("Kris_WalkRight3.png");
    
    WalkLeft[0] = loadImage("Kris_WalkLeft0.png");
    WalkLeft[1] = loadImage("Kris_WalkLeft1.png");
    WalkLeft[2] = loadImage("Kris_WalkLeft2.png");
    WalkLeft[3] = loadImage("Kris_WalkLeft3.png");
  }
  
// ---------------------------------------- ! UPDATE FUNCTION !
  void update()
  {
    Pos.add(Vel);
    println(CurrentState);
   
    switch (CurrentState) 
    {
      case 1: // walk down
        Vel = new PVector(0, speed);
        break;
      case 2: // walk up
        Vel = new PVector(0, -speed);
        break;
      case 3: // walk right
        Vel = new PVector(speed, 0);
        break;
      case 4: // walk left
        Vel = new PVector(-speed, 0);
        break;
      case 5: // idle
        Vel = new PVector(0, 0); // somehow case 5 doesn't return?
        break;
      default:
        CurrentState = NewState();
        break;
    }
    
    if (Pos.y < 0) 
    {
      Pos.y = height;
    }
    if (Pos.x > width) 
    {
      Pos.x = 0;
    } 
    else if (Pos.x < 0) 
    {
      Pos.x = width;
    }
  }
  
// ---------------------------------------- ! NEW STATE VARIABLE !
  int NewState()
  {
    FrameNumber = 0;
    float Random = random(1);
    float CurrentTotal = 0;
    float[] Range = States[CurrentState];
    for (int i = 0; i < Range.length; i++) 
    {
      CurrentTotal += Range[i];
      if (Random < CurrentTotal) 
      {
        return i;
      }
    }
    return 0;
  }
  
// ---------------------------------------- ! WALK DOWN ANIMATION !
  void WalkDownAnimation()
  {
    image(WalkDown[FrameNumber], 0, 0);
    if (frameCount%WalkDownSpeed == 0) 
    {
      FrameNumber++;
      if (FrameNumber>=WalkDownFrames) 
      {
        CurrentState = NewState();
      };
    }
  }

// ---------------------------------------- ! WALK UP ANIMATION !
  void WalkUpAnimation()
  {
    image(WalkUp[FrameNumber], 0, 0);
    if (frameCount%WalkUpSpeed == 0) 
    {
      FrameNumber++;
      if (FrameNumber>=WalkUpFrames) 
      {
        CurrentState = NewState();
      };
    }
  }
  
// ---------------------------------------- ! WALK RIGHT ANIMATION !
  void WalkRightAnimation()
  {
    image(WalkRight[FrameNumber], 0, 0);
    if (frameCount%WalkRightSpeed == 0) 
    {
      FrameNumber++;
      if (FrameNumber>=WalkRightFrames) 
      {
        CurrentState = NewState();
      };
    }
  }
  
// ---------------------------------------- ! WALK LEFT ANIMATION !
  void WalkLeftAnimation()
  {
    image(WalkLeft[FrameNumber], 0, 0);
    if (frameCount%WalkLeftSpeed == 0) 
    {
      FrameNumber++;
      if (FrameNumber>=WalkLeftFrames) 
      {
        CurrentState = NewState();
      };
    }
  }

// ---------------------------------------- ! DISPLAY CHARACTER !
  void DisplayCharacter()
  {
    pushMatrix();
    translate(Pos.x, Pos.y);
    switch (CurrentState) 
    {
      case 1: // walk down
        WalkDownAnimation();
        break;
      case 2: // walk up
        WalkUpAnimation();
        break;
      case 3: // walk right
        WalkRightAnimation();
        break;
      case 4: // walk left
        WalkLeftAnimation();
        break;
      case 5: // idle
      image(Idle, 0, 0); // doesn't return
        break;
      default:
        image(Idle, 0, 0);
        break;
    }
    
    popMatrix();
  }
}
