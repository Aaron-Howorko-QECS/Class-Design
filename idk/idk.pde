ArrayList<Shape> shapes = new ArrayList<Shape>();


void setup() {
  size(500, 500);
  
  Rectangle rHex = new Rectangle(width*1/4, height*1/4, width*2/4, height*2/4, color(#420DAB));
  Rectangle rRGB = new Rectangle(width*3/5, height*3/5, width*1/5, height*1/5, color(random(255), random(255), random(255)));
  Circle cRGB = new Circle(width*1/5, height*1/5, 100, color(#9F18D6));
  
  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(cRGB);
}

void draw() {
  background (0);
  
  for(int i=0; i<shapes.size(); i++){
  shapes.get(i).draw();
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
}
