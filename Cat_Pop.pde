PImage bg;
PImage bg2;
import ddf.minim.*;

Minim minim;
AudioSample pop;

void setup()
{
  size(650, 650, P3D);
  frameRate(8);
  bg = loadImage("pop1.png");
  bg2 = loadImage("pop2.png");
  minim = new Minim(this);
  pop = minim.loadSample( "pop16.wav", 512);                         
  if ( pop == null ) println("Didn't get pop");
}

void draw()
{
  background(bg); 
}

void keyPressed() 
{
  if ( key == ' ' ) pop.trigger();
  if ( key == ' ' ) image(bg2, 0, 0);   
}
