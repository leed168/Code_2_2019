// ---------------------------------------- ! VARIABLES !
PVector Vel__R, Pos__R;
int FrameNumber__R = 0;
float speed__R = 1;
// -------------------- states
int IdleState__R = 1;
int WalkDownState__R = 1;
int WalkUpState__R = 1;
int WalkRightState__R = 1;
int WalkLeftState__R = 1;
int CurrentState__R = IdleState__R;
// -------------------- idle
int IdleSpeed__R = 10;
PImage Idle__R = new PImage();
// -------------------- walk down
int WalkDownFrames__R = 4;
int WalkDownSpeed__R = 3;
PImage[] WalkDown__R = new PImage[WalkDownFrames__R];
// -------------------- walk up
int WalkUpFrames__R = 4;
int WalkUpSpeed__R = 3;
PImage[] WalkUp__R = new PImage[WalkUpFrames__R];
// -------------------- walk right
int WalkRightFrames__R = 4;
int WalkRightSpeed__R = 3;
PImage[] WalkRight__R = new PImage[WalkRightFrames__R];
// -------------------- walk left
int WalkLeftFrames__R = 4;
int WalkLeftSpeed__R = 3;
PImage[] WalkLeft__R = new PImage[WalkLeftFrames__R];

// ---------------------------------------- ! RALSEI CLASS !
class Ralsei
{
  String[] StateNames__R = {"Idle", "WalkDown", "WalkUp", "WalkRight", "WalkLeft"};
  float[][] States__R =
    {
      {0.25, 0.25, 0.25, 0.25}, 
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25}
    };

// ---------------------------------------- ! RALSEI !
  Ralsei()
  {
    Vel__R = new PVector(0, 0);
    Pos__R = new PVector(random(width), random(height));
    
    Idle__R = loadImage("Ral_WalkDown0.png");
    
    WalkDown__R[0] = loadImage("Ral_WalkDown0.png");
    WalkDown__R[1] = loadImage("Ral_WalkDown1.png");
    WalkDown__R[2] = loadImage("Ral_WalkDown2.png");
    WalkDown__R[3] = loadImage("Ral_WalkDown3.png");
    
    WalkUp__R[0] = loadImage("Ral_WalkUp0.png");
    WalkUp__R[1] = loadImage("Ral_WalkUp1.png");
    WalkUp__R[2] = loadImage("Ral_WalkUp2.png");
    WalkUp__R[3] = loadImage("Ral_WalkUp3.png");
    
    WalkRight__R[0] = loadImage("Ral_WalkRight0.png");
    WalkRight__R[1] = loadImage("Ral_WalkRight1.png");
    WalkRight__R[2] = loadImage("Ral_WalkRight2.png");
    WalkRight__R[3] = loadImage("Ral_WalkRight3.png");
    
    WalkLeft__R[0] = loadImage("Ral_WalkLeft0.png");
    WalkLeft__R[1] = loadImage("Ral_WalkLeft1.png");
    WalkLeft__R[2] = loadImage("Ral_WalkLeft2.png");
    WalkLeft__R[3] = loadImage("Ral_WalkLeft3.png");
  }
  
// ---------------------------------------- ! UPDATE FUNCTION !
  void update()
  {
    Pos__R.add(Vel__R);
    println(CurrentState__R);
   
    switch (CurrentState__R) 
    {
      case 1: // walk down
        Vel__R = new PVector(0, speed__R);
        break;
      case 2: // walk up
        Vel__R = new PVector(0, -speed__R);
        break;
      case 3: // walk right
        Vel__R = new PVector(speed__R, 0);
        break;
      case 4: // walk left
        Vel__R = new PVector(-speed__R, 0);
        break;
      case 5: // idle
        Vel__R = new PVector(0, 0); // somehow case 5 doesn't return?
        break;
      default:
        CurrentState__R = NewState__R();
        break;
    }
    
    if (Pos__R.y < 0) 
    {
      Pos__R.y = height;
    }
    if (Pos__R.x > width) 
    {
      Pos__R.x = 0;
    } 
    else if (Pos__R.x < 0) 
    {
      Pos__R.x = width;
    }
  }
  
// ---------------------------------------- ! NEW STATE VARIABLE !
  int NewState__R()
  {
    FrameNumber__R = 0;
    float Random__R = random(1);
    float CurrentTotal__R = 0;
    float[] Range = States__R[CurrentState__R];
    for (int i = 0; i < Range.length; i++) 
    {
      CurrentTotal__R += Range[i];
      if (Random__R < CurrentTotal__R) 
      {
        return i;
      }
    }
    return 0;
  }
  
// ---------------------------------------- ! WALK DOWN ANIMATION !
  void WalkDownAnimation__R()
  {
    image(WalkDown__R[FrameNumber__R], 0, 0);
    if (frameCount%WalkDownSpeed__R == 0) 
    {
      FrameNumber__R++;
      if (FrameNumber__R>=WalkDownFrames__R) 
      {
        CurrentState__R = NewState__R();
      };
    }
  }

// ---------------------------------------- ! WALK UP ANIMATION !
  void WalkUpAnimation__R()
  {
    image(WalkUp__R[FrameNumber__R], 0, 0);
    if (frameCount%WalkUpSpeed__R == 0) 
    {
      FrameNumber__R++;
      if (FrameNumber__R>=WalkUpFrames__R) 
      {
        CurrentState__R = NewState__R();
      };
    }
  }
  
// ---------------------------------------- ! WALK RIGHT ANIMATION !
  void WalkRightAnimation__R()
  {
    image(WalkRight__R[FrameNumber__R], 0, 0);
    if (frameCount%WalkRightSpeed__R == 0) 
    {
      FrameNumber__R++;
      if (FrameNumber__R>=WalkRightFrames__R) 
      {
        CurrentState__R = NewState__R();
      };
    }
  }
  
// ---------------------------------------- ! WALK LEFT ANIMATION !
  void WalkLeftAnimation__R()
  {
    image(WalkLeft__R[FrameNumber__R], 0, 0);
    if (frameCount%WalkLeftSpeed__R == 0) 
    {
      FrameNumber__R++;
      if (FrameNumber__R>=WalkLeftFrames__R) 
      {
        CurrentState__R = NewState__R();
      };
    }
  }

// ---------------------------------------- ! DISPLAY CHARACTER !
  void DisplayCharacter__R()
  {
    pushMatrix();
    translate(Pos__R.x, Pos__R.y);
    switch (CurrentState__R) 
    {
      case 1: // walk down
        WalkDownAnimation__R();
        break;
      case 2: // walk up
        WalkUpAnimation__R();
        break;
      case 3: // walk right
        WalkRightAnimation__R();
        break;
      case 4: // walk left
        WalkLeftAnimation__R();
        break;
      case 5: // idle
      image(Idle__R, 0, 0); // doesn't return
        break;
      default:
        image(Idle__R, 0, 0);
        break;
    }
    
    popMatrix();
  }
}
