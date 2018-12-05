class Left extends Paddle {
  private float speed;

  Left(float x, float y, float paddleWidth, float paddleHeight) {
    super(x, y, paddleWidth, paddleHeight);
    this.speed = 5;
  }

  public void move() {

    if (keys[0]) {
      y = y - speed;
    } 
    if (keys[1]) {
      y = y + speed;
    }

    if (y <= 0) {
      y = 0;
    }
    if (y + paddleHeight >= 600) {
      y = 600 - paddleHeight;
    }
  }

  void draw() {
    fill(0);
    rect(x, y, paddleWidth, paddleHeight);
  }

  public float getSpeed() {
    return speed;
  }
  
}
