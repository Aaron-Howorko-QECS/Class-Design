class Right extends Paddle {
  private float speed;

  Right(float x, float y, float paddleWidth, float paddleHeight) {
    super(x, y, paddleWidth, paddleHeight);
    this.speed = 5;
  }

  void move() {

    if (keys[2] == true) {
      y = y - speed;
    } 
    if (keys[3] == true) {
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
