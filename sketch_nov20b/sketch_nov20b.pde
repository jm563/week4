float x, y; 
float ballsize = 40; 
float xspeed = 5, yspeed = 5; 
float gravity = 0.1; 
float braking = 0.9; 
void setup() {
  {
    size(255, 255);
  }
}
void draw() { 
  background(#D10B0B);
  fill(#F211C2);
  ellipse(xspeed, yspeed, 50, 50);
  y = y + yspeed;
  x = x + xspeed;
  yspeed = yspeed +gravity;
  if ( y+ballsize/2>height) {
    yspeed *= -(1-braking);
    y = height-ballsize/2;
  }
  if (x+ballsize/2>= width) {
    xspeed *= -(1-braking);
    x=width -ballsize/2;
  } 
  else if (x-ballsize/2<=0) {
    xspeed *= -(1 - braking); 
    x = ballsize/2;
  }
}

