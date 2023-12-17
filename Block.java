public class Block{
  public float v; 
  public float m;
  public int w; 
  public float x;
  public int y;
  public Block(int x, float m, float v, int w){
    this.x = x; 
    this.m = m; 
    this.v = v;   
    this.w = w; 
    this.y = 250 - w; 
  }
  
  public void move(){
    this.x += this.v;
  }
  public boolean hitWall(){
    return (this.x <= 0);
  }
  public void reverse(){
    this.v *= -1;
  }
  public float bounce(Block other){ 
    float netMass = this.m + other.m; 
    
    float newV = (this.m - other.m);
    newV = newV / netMass;  
    
    newV *= this.v;
    newV += (2 * other.m / (netMass)) * other.v;
    
    return newV;
  }
  public void setV(int num){
    this.v = num;
  }
  public boolean collided(Block other){
    if(this.x + this.w < other.x || other.x + other.w < this.x){
      return false; 
    }else{
      return true;
    }
  }
}
