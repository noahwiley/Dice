void setup()
{
  noLoop();
  textAlign(CENTER);
  size(500, 500);
}

void draw()
{
  background(255,255,255);
  int total = 0;
  //Making instances of bob
  for(int y = 40; y < 450; y+= 75){
     for(int x = 40; x < 450; x+=75){
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
      total = bob.numDots + total;
     }
  }
  text("Total: " +total, 250,25);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, numDots;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    numDots = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    //fill in circles make sure to change on rectangle drawing
    fill(0);
    //dot orientations
    if(numDots == 1){
      ellipse(myX+25,myY+25,5,5);
    } else if (numDots == 2){
      ellipse(myX+15, myY+15,5,5);
      ellipse(myX+35, myY+35,5,5);
    } else if (numDots == 3){
      ellipse(myX+15, myY+15,5,5);
      ellipse(myX+35, myY+35,5,5);
      ellipse(myX+25,myY+25,5,5);
    } else if (numDots == 4){
      ellipse(myX+15, myY+15,5,5);
      ellipse(myX+35, myY+15,5,5);
      ellipse(myX+15, myY+35,5,5);
      ellipse(myX+35, myY+35,5,5);
    } else if (numDots == 5){
      ellipse(myX+15, myY+15,5,5);
      ellipse(myX+35, myY+15,5,5);
      ellipse(myX+15, myY+35,5,5);
      ellipse(myX+35, myY+35,5,5);
      ellipse(myX+25,myY+25,5,5);
    } else if (numDots == 6){
      ellipse(myX+15, myY+15,5,5);
      ellipse(myX+35, myY+15,5,5);
      ellipse(myX+15, myY+35,5,5);
      ellipse(myX+35, myY+35,5,5);
      ellipse(myX+15, myY+25,5,5);
      ellipse(myX+35, myY+25,5,5);
    }
  }
  
  void show()
  {
    //drawing just the rectangle
    fill(255);
    strokeWeight(3);
    rect(myX,myY, 50, 50, 10);
  }
}
