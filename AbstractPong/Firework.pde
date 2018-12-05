class Firework extends Ball {
  float gravity;
  float xSpeed;
  float ySpeed;
  float radius;
  float c;

  Firework(float x, float y, float radius, color c) {
    super(x, y, radius, c);
    this.gravity = 0.5;
    this.xSpeed = random(-20, 20);
    this.ySpeed = random(-20, 20);
    this.c = color( int(random(255)), int(random(255)), int(random(255)) );
  }
  public void CreateFirework() {
    for (int i=0; i < firework.length; i++) {
      //firework[i] = new Firework(ball.getX(),)
    }
  }

  void step() {
    x += xSpeed;
    y += ySpeed;
    ySpeed += gravity;
  }
  void draw() {
    fill(c);
    ellipse(x, y, 2*radius, 2* radius);
    //if (ball.getX() - ball.getRadius() <= 5);
  }
}
