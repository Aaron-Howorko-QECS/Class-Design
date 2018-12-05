class Ball extends Shape {
  private float radius; 
  private color c;
  private float xSpeed;
  private float ySpeed;

  Ball(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
    this.xSpeed = random(-3, 3);
    this.ySpeed = random(-3, 3);
  }

  void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }

  void move() {

    while (xSpeed > -2 && xSpeed < 2) {
      xSpeed = random(-3, 3);
    }
    while (ySpeed > -2 && ySpeed < 2) {
      ySpeed = random(-3, 3);
    }
    x = x + xSpeed;
    y = y + ySpeed;

    // bounce 
    if (x <= 15) {
      xSpeed *=-1;
    }
    if (x >= 585) {
      xSpeed *=-1;
    }
    if (y <= 15) {
      ySpeed *= -1;
    }
    if (y >= 585) {
      ySpeed *= -1;
    }
    // score
    if (x <= 15) {
      x = 300;
      y = 300;
      AbstractPong.scoreNum[0] ++;
      score();
    }
    if (x >= 585) {
      x = 300;
      y = 300;
      AbstractPong.scoreNum[1] ++;
      score();
    }

    if (x - radius > leftPaddle.getX() && x - radius < leftPaddle.getX() + leftPaddle.getPaddleWidth() && y + radius > leftPaddle.getY() && y - radius < leftPaddle.getY() + leftPaddle.getPaddleHeight()) {
      xSpeed *= -1;
    }
    if (x + radius > rightPaddle.getX() && x - radius < rightPaddle.getX() + rightPaddle.getPaddleWidth() && y + radius > rightPaddle.getY() &&  y - radius < rightPaddle.getY() + rightPaddle.getPaddleHeight()) {
      xSpeed *= -1;
    }
  }

  public void score() {
    println("p1 score: " + AbstractPong.scoreNum[0] + " p2 score: " + AbstractPong.scoreNum[1]);
  }
  public float X() {
    return x;
  }
  public float Y() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
  public  color getC() {
    return c;
  }
  public float XSpeed() {
    return xSpeed;
  }
  public float getYSpeed() {
    return ySpeed;
  }
}
