ArrayList<Shape> shapes = new ArrayList<Shape>();
Firework[] firework = new Firework[25];
public static int [] scoreNum = new int[2];
public static boolean [] keys = new boolean[4];
Left leftPaddle;
Right rightPaddle;

void setup() {
  size(600, 600);
  ellipseMode(RADIUS);
  

  Ball ball = new Ball(width*1/2, height*1/2, 10, color(#420DAB));
  leftPaddle = new Left(width*6/64, height*3/8, width/64, height/4);
  rightPaddle = new Right(width*57/64, height*3/8, width/64, height/4);

  shapes.add(ball);
  shapes.add(leftPaddle);
  shapes.add(rightPaddle);
}

void draw() {

  background(255);
  textSize(32);
  text(scoreNum[0], 150, 110);
  text(scoreNum[1], 425, 110);


  for (int i=0; i<shapes.size(); i++) {
    shapes.get(i).draw();
    shapes.get(i).move();
    shapes.get(0).score();
  }
}

abstract class Shape {
  float x;
  float y;

  Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
  abstract void move();
  abstract void score();

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
}
