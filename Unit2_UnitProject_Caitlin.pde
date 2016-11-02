import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;

PImage PlatformImg;
Platform[] pl1;
Platform[] pl2;
Platform[] pl3;
Platform[] pl4;
Platform[] pl5;

void setup()
{
  fullScreen(P3D);
  colorMode(HSB);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -100);
  box2d.setContinuousPhysics(true);
  // box2d.listenForCollisions(); 
  PlatformImg = loadImage("Platform.png"); 
  int w = PlatformImg.width;
  pl1 = new Platform[500];
  pl2 = new Platform[500];
  pl3 = new Platform[500];
  pl4 = new Platform[500];
  pl5 = new Platform[500];

  for (int x=0; x<16; x++)
  {
    pl1[x] = new Platform(w*x, height-20, PlatformImg, true);
    pl2[x] = new Platform(w*x, height/5, PlatformImg, true);
    pl3[x] = new Platform(w*x+700, height/1.5, PlatformImg, true);
  }
  

  //pl4 = new Platform(w*3, height-20, PlatformImg, true);
  //pl5 = new Platform(w*4, height-20, PlatformImg, true);
}

void draw()
{
  background(150, 128, 255);
  for (int x=0; x < 4; x++)
  {
    pl1[x].Draw();
    pl3[x].Draw();
  }

  for (int x=0; x < 6; x++)
  {
    pl2[x].Draw();
  }

  box2d.step();
}