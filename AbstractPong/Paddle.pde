class Paddle extends Shape {
  float paddleWidth; 
  float paddleHeight;


  Paddle(float x, float y, float paddleWidth, float paddleHeight) {
    super(x, y);
    this.paddleWidth = paddleWidth;
    this.paddleHeight = paddleHeight;
  }

  void draw() {
  }
  void move() {
  }
  void score() {
  }
  
  public float getPaddleWidth() {
    return paddleWidth;
  }
    public float getPaddleHeight() {
    return paddleHeight;
  }
}
