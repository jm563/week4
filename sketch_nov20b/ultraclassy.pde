class Ball {
  PVector location velocity; 
  int ballSize = 40; 
  float gravity = 0.1; 
  float braking = 0.1; 

  void Ball(inX, inY, inVelX, inVely, float inVelY) {
    location = new PVector (inX inY);
    velocity = new PVector(inVelX, inVelY);
  }
  void update () {
    move();
    if (shouldBouncex()) {
      bounceX();
    }
    if (shouldBouncey()) {
      bouncyY();
    }
    draw();
  }
  void move () {
    location.add(velocity); 
    velocity.y += gravity;
  }
  boolean shouldBounceX () {
    return ((location.x > width) ||
      (location.x <0));
  }
  boolean shouldBounceY() {
    return ((location.y > height)||
      (location.y <0));
  }

  void bouncex () {
    velocity.x = velocity.x *-1; 
    if (location.x < 0) {
      location.x= 0;
    } 
    else if (location.x>width) {
      location.x=width;
    }
  }
  void bouncey () {
    velocity.y *= -(1 - braking);
    location.y = height - ballsize/2;
  }
  void draw () {
    fill(216, 7, 21);
    ellipse(locastion.x, location.y, ballSize, ballSize);
  }
}

