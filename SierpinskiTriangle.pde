static final int base = 15;
public void setup()
{
  background(0);
  noStroke();
  size(500,500);
  frameRate(60);
  fill((float)(Math.random()*155+100),(float)(Math.random()*155+100),(float)(Math.random()*155+100));
  sierpinski(50,450,400);
}
public void draw()
{
  
  
}

public void mousePressed(){
  
  int size = (int)(Math.random()*250)+200;
  if(mousePressed){
  background(0);
  fill((float)(Math.random()*155+100),(float)(Math.random()*155+100),(float)(Math.random()*155+100));
  sierpinski((500-size)/2,(500+size)/2,size);
    
  }
  
  
}

public void sierpinski(int x, int y, int len) 
{
  if(len < base){
    triangle(x, y, x+len, y, x+len/2 , y-len);
   }
   else{
     sierpinski(x,y,len/2);
     sierpinski(x+len/2, y,len/2);
     sierpinski(x+len/4,y-len/2,len/2);
   }
  
  
}

/*
int x = 250;
  int y = 250;
  fill(0);
  triangle(x-25, y+25, x+25, y+25, x, y-25);
  */
