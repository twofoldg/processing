import processing.core.PVector;

color[] colors = {color(34, 102, 153), color(221, 46, 68), color(255, 204, 77), color(255, 255, 255)};

ArrayList<Shape> shapes = new ArrayList<Shape>();

void setup() {
  size(1000, 1000);
  rectMode(CENTER);
  ellipseMode(CENTER);
  background(0);
  fill(0);
  rect(width/2, height/2, width, height);

  int mySize = 200;
  for (int x = mySize; x <= width - mySize; x += mySize) {
    for (int y = mySize; y <= height - mySize; y += mySize) {
      for (int i = 0; i < 5; i++) {
        shapes.add(new Shape(x, y, width));
      }
    }
  }
}

void draw() {
  for (Shape s : shapes) {
    s.display();
    s.move();
  }

  if (frameCount > 500) {
    noLoop();
  }
}

class Shape {
  PVector position;
  float range;
  float size;
  PVector direction;
  float speed;
  int colorIndex;

  Shape(float x, float y, float range) {
    this.position = new PVector(x, y);
    this.range = range;
    this.size = random(50, 90);
    this.direction = new PVector(random(-1, 1), random(-1, 1));
    this.speed = random(0.5, 0.8);
    this.colorIndex = int(random(colors.length));
  }

  void move() {
    direction.x = speed * cos(radians(frameCount * random(0.5, 0.9)));
    direction.y = speed * sin(radians(frameCount * random(0.5, 0.9)));
    position.add(PVector.mult(direction, speed));
    if (frameCount % int(random(30, 60)) == 0) {
      size /= 1.5;
      direction.set(random(-1, 1), random(-1, 1));
    }
  }


  void display() {
    position.x = constrain(position.x, 0, width);
    position.y = constrain(position.y, 0, height);
    noFill();
    strokeWeight(0.1);
    stroke(colors[colorIndex]);
    ellipse(position.x, position.y, size, size);
  }
}
