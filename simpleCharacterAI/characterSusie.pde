// ---------------------------------------- ! VARIABLES !
PVector Vel__S, Pos__S;
int FrameNumber__S = 0;
float speed__S = 1;
// -------------------- states
int IdleState__S = 1;
int WalkDownState__S = 1;
int WalkUpState__S = 1;
int WalkRightState__S = 1;
int WalkLeftState__S = 1;
int CurrentState__S = IdleState__S;
// -------------------- idle
int IdleSpeed__S = 10;
PImage Idle__S = new PImage();
// -------------------- walk down
int WalkDownFrames__S = 4;
int WalkDownSpeed__S = 9;
PImage[] WalkDown__S = new PImage[WalkDownFrames__S];
// -------------------- walk up
int WalkUpFrames__S = 4;
int WalkUpSpeed__S = 9;
PImage[] WalkUp__S = new PImage[WalkUpFrames__S];
// -------------------- walk right
int WalkRightFrames__S = 4;
int WalkRightSpeed__S = 9;
PImage[] WalkRight__S = new PImage[WalkRightFrames__S];
// -------------------- walk left
int WalkLeftFrames__S = 4;
int WalkLeftSpeed__S = 9;
PImage[] WalkLeft__S = new PImage[WalkLeftFrames__S];

// ---------------------------------------- ! SUSIE CLASS !
class Susie
{
  String[] StateNames__S = {"Idle", "WalkDown", "WalkUp", "WalkRight", "WalkLeft"};
  float[][] States__S =
    {
      {0.25, 0.25, 0.25, 0.25}, 
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25},
      {0.25, 0.25, 0.25, 0.25}
    };

// ---------------------------------------- ! SUSIE !
  Susie()
  {
    Vel__S = new PVector(0, 0);
    Pos__S = new PVector(random(width), random(height));
    
    Idle__S = loadImage("Sus_WalkDown0.png");
    
    WalkDown__S[0] = loadImage("Sus_WalkDown0.png");
    WalkDown__S[1] = loadImage("Sus_WalkDown1.png");
    WalkDown__S[2] = loadImage("Sus_WalkDown2.png");
    WalkDown__S[3] = loadImage("Sus_WalkDown3.png");
    
    WalkUp__S[0] = loadImage("Sus_WalkUp0.png");
    WalkUp__S[1] = loadImage("Sus_WalkUp1.png");
    WalkUp__S[2] = loadImage("Sus_WalkUp2.png");
    WalkUp__S[3] = loadImage("Sus_WalkUp3.png");
    
    WalkRight__S[0] = loadImage("Sus_WalkRight0.png");
    WalkRight__S[1] = loadImage("Sus_WalkRight1.png");
    WalkRight__S[2] = loadImage("Sus_WalkRight2.png");
    WalkRight__S[3] = loadImage("Sus_WalkRight3.png");
    
    WalkLeft__S[0] = loadImage("Sus_WalkLeft0.png");
    WalkLeft__S[1] = loadImage("Sus_WalkLeft1.png");
    WalkLeft__S[2] = loadImage("Sus_WalkLeft2.png");
    WalkLeft__S[3] = loadImage("Sus_WalkLeft3.png");
  }
  
// ---------------------------------------- ! UPDATE FUNCTION !
  void update()
  {
    Pos__S.add(Vel__S);
    println(CurrentState__S);
   
    switch (CurrentState__S) 
    {
      case 1: // walk down
        Vel__S = new PVector(0, speed__S);
        break;
      case 2: // walk up
        Vel__S = new PVector(0, -speed__S);
        break;
      case 3: // walk right
        Vel__S = new PVector(speed__S, 0);
        break;
      case 4: // walk left
        Vel__S = new PVector(-speed__S, 0);
        break;
      case 5: // idle
        Vel__S = new PVector(0, 0); // somehow case 5 doesn't return?
        break;
      default:
        CurrentState__S = NewState__S();
        break;
    }
    
    if (Pos__S.y < 0) 
    {
      Pos__S.y = height;
    }
    if (Pos__S.x > width) 
    {
      Pos__S.x = 0;
    } 
    else if (Pos__S.x < 0) 
    {
      Pos__S.x = width;
    }
  }
  
// ---------------------------------------- ! NEW STATE VARIABLE !
  int NewState__S()
  {
    FrameNumber__S = 0;
    float Random__S = random(1);
    float CurrentTotal__S = 0;
    float[] Range = States__S[CurrentState__S];
    for (int i = 0; i < Range.length; i++) 
    {
      CurrentTotal__S += Range[i];
      if (Random__S < CurrentTotal__S) 
      {
        return i;
      }
    }
    return 0;
  }
  
// ---------------------------------------- ! WALK DOWN ANIMATION !
  void WalkDownAnimation__S()
  {
    image(WalkDown__S[FrameNumber__S], 0, 0);
    if (frameCount%WalkDownSpeed__S == 0) 
    {
      FrameNumber__S++;
      if (FrameNumber__S>=WalkDownFrames__S) 
      {
        CurrentState__S = NewState__S();
      };
    }
  }

// ---------------------------------------- ! WALK UP ANIMATION !
  void WalkUpAnimation__S()
  {
    image(WalkUp__S[FrameNumber__S], 0, 0);
    if (frameCount%WalkUpSpeed__S == 0) 
    {
      FrameNumber__S++;
      if (FrameNumber__S>=WalkUpFrames__S) 
      {
        CurrentState__S = NewState__S();
      };
    }
  }
  
// ---------------------------------------- ! WALK RIGHT ANIMATION !
  void WalkRightAnimation__S()
  {
    image(WalkRight__S[FrameNumber__S], 0, 0);
    if (frameCount%WalkRightSpeed__S == 0) 
    {
      FrameNumber__S++;
      if (FrameNumber__S>=WalkRightFrames__S) 
      {
        CurrentState__S = NewState__S();
      };
    }
  }
  
// ---------------------------------------- ! WALK LEFT ANIMATION !
  void WalkLeftAnimation__S()
  {
    image(WalkLeft__S[FrameNumber__S], 0, 0);
    if (frameCount%WalkLeftSpeed__S == 0) 
    {
      FrameNumber__S++;
      if (FrameNumber__S>=WalkLeftFrames__S) 
      {
        CurrentState__S = NewState__S();
      };
    }
  }

// ---------------------------------------- ! DISPLAY CHARACTER !
  void DisplayCharacter__S()
  {
    pushMatrix();
    translate(Pos__S.x, Pos__S.y);
    switch (CurrentState__S) 
    {
      case 1: // walk down
        WalkDownAnimation__S();
        break;
      case 2: // walk up
        WalkUpAnimation__S();
        break;
      case 3: // walk right
        WalkRightAnimation__S();
        break;
      case 4: // walk left
        WalkLeftAnimation__S();
        break;
      case 5: // idle
      image(Idle__S, 0, 0); // doesn't return
        break;
      default:
        image(Idle__S, 0, 0);
        break;
    }
    
    popMatrix();
  }
}
