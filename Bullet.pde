class Bullet extends Floater
{
  public Bullet(Spaceship bob){
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    //myColor= color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myPointDirection = bob.getPointDirection();
    accelerate(.6);
  }
        
  public void show(){
    fill(255);
    noStroke();
    ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  public double getX(){ return myCenterX;}
  public double getY(){ return myCenterY;}
  
  public void move ()   
  {           
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
  }

}
