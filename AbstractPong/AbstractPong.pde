ArrayList<Shape> shapes = new ArrayList<Shape>();
Firework[] firework;
public static int [] scoreNum = new int[2];
public static boolean [] keys = new boolean[4];
public Ball ball;
Left leftPaddle;
Right rightPaddle;


void setup() {
  size(600, 600);
  ellipseMode(RADIUS);


  ball = new Ball(width*1/2, height*1/2);
  leftPaddle = new Left(width*6/64, height*3/8, width/64, height/4);
  rightPaddle = new Right(width*57/64, height*3/8, width/64, height/4);
  firework = new Firework[15];


  shapes.add(ball);
  shapes.add(leftPaddle);
  shapes.add(rightPaddle);
  for (int i = 0; i < firework.length; i++) {
    firework[i] = new Firework(0, 10000);
  }
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
  for (int i = 0; i < firework.length; i++) {
    firework[i].draw();
    firework[i].move();
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
