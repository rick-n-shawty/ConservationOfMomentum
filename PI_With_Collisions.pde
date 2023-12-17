Block block1; 
Block block2; 
int count = 0;  
int digits = 5;
float timeSteps = 1000;
void setup(){
  size(960, 480);
  background(200); 
  block1 = new Block(80, 1, 0, 50);  
  float v2 = (-5 / timeSteps);
  System.out.println(-5 / 100);
  System.out.println(v2);
  block2 = new Block(500, pow(100,digits - 1), v2, 100);
}

void draw(){
  background(200); 
  
 for(int i = 0; i < timeSteps; i++){
   if(block1.collided(block2)){
      float v1 = block1.bounce(block2);
      float v2 = block2.bounce(block1); 
      block1.v = v1;
      block2.v = v2;
      count++;
    }
    if(block1.hitWall()){
      block1.reverse();
      count++;
    }
    block1.move();
    block2.move();
 }
  
  fill(123,155,245);
  square(block1.x, block1.y, block1.w);
  fill(90,124,76);
  square(block2.x, block2.y, block2.w); 
  
  PFont f;
  f = createFont("Arial", 20, true);
  textFont(f,20);
  fill(0);
  text("Digits of PI: " + count, 40, 100);
}
