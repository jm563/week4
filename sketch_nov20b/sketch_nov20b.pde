float x, y; 
float ballsize = 40; 
float xspeed = 5, yspeed = 5; 
float gravity = 0.1; 
float braking = 0.9; 
void setup() {
  {
    size(255, 255);
    bouncy =new Ball(width/2, 60, 2.5, 5);
  }
  void draw () {
    background (#92CFED);
    bouncy.update();
  }
}

