Spaceship bob = new Spaceship();
Star[] night = new Star[200];
ArrayList<Asteroid> eva = new ArrayList<Asteroid>();
boolean keys = false;

public void setup() 
{
  size(500,500);
  for (int i = 0; i <night.length;i++){
    night[i] = new Star();
  }
  for (int i =0; i<10;i++){
    eva.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<night.length;i++){
    night[i].show();
  }
  if (keys ==true){
    bob.move();
  }
  bob.show();
  for (int i =0; i<eva.size();i++){
    float d = dist((float)bob.getX(),(float)bob.getY(), (float)eva.get(i).getX(),(float)eva.get(i).getY());
    if (d<20){
      eva.remove(i);
    }
    else{
      eva.get(i).show();
      eva.get(i).move();
    }
  }
}
public void keyPressed(){
  if(key == 'h'){
    bob.setXspeed(0);
    bob.accelerate(0);
    keys = false;
    bob.myCenterX = (int)(Math.random()*500);
    bob.myCenterY = (int)(Math.random()*500);
    bob.turn((int)(Math.random()*300));
    bob.myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  if (key == 'a'){
    bob.turn(-20);
  }
  if (key == 'd'){
   bob.turn(20);
  }
  if (key == 'w'){
   bob.accelerate(2);
   keys = true;
  }
}
