float x;
float ballSize = 40;
float y;
float speed = 5;
boolean movingup=false;
boolean movingacross=false;




void setup() {
  size(255, 255);
}
 
void draw() {
  background(#11F21A);
  fill(#F211C2);
  ellipse(x, y, 50, 50);
  if(y>height) {
    movingup=true;
  }
  if (movingup){
    y = y-0.5;
  }else{
    y = y+0.5;
  }
  if (y==0){
    movingup=false;
  }
 
 if (x>width) {
   movingacross=true;
 }
 if(movingacross){
   x = x-speed;
 } else{
   x=x+speed;
 }
 if(x==0){
   movingacross=false;
 }

}
