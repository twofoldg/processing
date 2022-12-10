float t1 = 0;
float t2 = 0;

void setup() {

  size(900, 900);
}

void draw() {
  //background(255);
  float xNoise = noise(t1);
  float yNoise = noise(t2);
  float x = map(xNoise, 0, 1, 0, width);
  float y = map(yNoise, 0, 1, 0, height);
  ellipse(x, y, 2, 2);
  println(x);
  t1 += 0.001;
  t2 += 0.002;
}
