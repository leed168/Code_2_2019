// Sprite source: https://www.spriters-resource.com/pc_computer/deltarunedemo/
// Game: Deltarune

// ---------------------------------------- ! VARIABLES !
Kris Char1;
Ralsei Char2;
Susie Char3;
//int IndexNumber = 0;
//PImage[] Grass = new PImage[9];
PImage GrassStatic;
PImage Lancer;

// ---------------------------------------- ! SETUP FUNCTION !
void setup()
{
  size(300, 200);
  
  GrassStatic = loadImage("GrassStatic.png");
  Lancer = loadImage("Lancer.png");
  
  Char1 = new Kris();
  Char2 = new Ralsei();
  Char3 = new Susie();
  imageMode(CENTER);
  
  //for (int i = 0; i < Grass.length; i ++ ) 
  //{
  //  Grass[i] = loadImage( "Grass" + i + ".png" );
  //}
}

// ---------------------------------------- ! DRAW FUNCTION !
void draw()
{
  background(0);
  image(GrassStatic, width/2, height/2);
  //image(Grass[IndexNumber], width/2, height/2);
  //IndexNumber = (IndexNumber + 1) % Grass.length; // tried to animate grass but framerate doesn't match up
  
  image(Lancer, width/2, height/2);
  
  Char1.DisplayCharacter();
  Char1.update();
  Char2.DisplayCharacter__R();
  Char2.update();
  Char3.DisplayCharacter__S();
  Char3.update();
}
