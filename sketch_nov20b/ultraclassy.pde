class Ball {
  PVector location velocity; 
  int ballSize = 40; 
  float gravity = 0.1; 
  float braking = 0.1; 
  
  void Ball(inX, inY, inVelX, inVely){
    location = new PVector (inX inY);
    velocity = new PVector(inVelX, inVelY); 
  }
  void update () {}
  void move (){}
  boolean shouldBounce (){}
  void bounce (){}
  void draw (){}
}
