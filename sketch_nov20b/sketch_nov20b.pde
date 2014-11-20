Ball bouncy; 

void setup() 
{
  size(255, 255);
  bouncy =new Ball(width/2, 60, 2.5, 5);
}
void draw () {
  background (#92CFED);
  bouncy.update();
}

