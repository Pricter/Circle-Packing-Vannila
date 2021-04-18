class Circle {
  float x;
  float y;
  float r;
  
  boolean growing = true;
  
  Circle(float x_, float y_) {
    x = x_;
    y = y_;
    r = 1;
  }
  
  void grow() {
    if(growing) {
      r = r + 0.5;
    }
  }
  
  boolean edges() {
   return (x + r > width || x - r < 0 || y + r > height || y - r < 0);
  }
  
  void show() {
    if(r < 255) {
      stroke(0);
      strokeWeight(2);
      fill(r / 2 / 8, r * 2 * 3, r + 2 + 3);
      ellipse(x, y, r*2, r*2);
    } else {
      stroke(0);
      strokeWeight(2);
      noFill();
      ellipse(x, y, r*2, r*2);
    }
  }
}
