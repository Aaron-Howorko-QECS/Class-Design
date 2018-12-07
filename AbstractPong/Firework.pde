final class Firework extends Ball {
  private float radius;
  private color c;
  private float g;
  private float xSpeed;
  private float ySpeed;


  Firework(float x, float y) {
    super(x, y);
    this.radius = random(2, 9);
    this.c = color(random(255), random(255), random(255));
    this.g = 0.5;
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
  }

  public void createFirework() {
    for (int i = 0; i < firework.length; i++) {
      firework[i] = new Firework(ball.getX(), ball.getY());
    }
  }
  
  public void move() {
    x += xSpeed;
    y += ySpeed;
    ySpeed += g;
  }
  
  public void draw() {
    
    fill(c);
    ellipse(x, y, radius, radius);
    if (ball.getX() - ball.getRadius() <= 5) {
      createFirework();
    }
    if (ball.getX() + ball.getRadius() >= 595) {
      createFirework();
    }
  }
  
  void score() {
  }
}
