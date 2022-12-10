import java.util.Random;

Random gen;

void setup() {
  background(255);
  size(600, 200);
  gen = new Random();
  smooth();
}

void draw() {

  float xloc = (float) gen.nextGaussian();
  float sd = 20;
  
  xloc = (xloc * sd) + width/2;
  
  noStroke();
  fill(0,10);

  ellipse(xloc, height/2, 16, 16);
}
