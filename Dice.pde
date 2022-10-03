void setup()
{
  noLoop();
  size(500, 600);
}
void draw()
{
  int counter = 0;
  background(#b2e8eb);
  for (int y = 10; y <= 500; y = y + 50) {
     for (int x =7; x <= 500; x = x + 45) {
       fill(#ffffff);
       Die ah = new Die(x,y);
       ah.roll();
       ah.show();
       if (ah.numOfDots == 1){
         counter = counter + 1;
       } else if (ah.numOfDots == 2) {
         counter = counter + 2;
       } else if (ah.numOfDots == 3) {
         counter = counter + 3;
       } else if (ah.numOfDots == 4) {
         counter = counter + 4;
       } else if (ah.numOfDots == 5) {
         counter = counter + 5;
       } else {
         counter = counter + 6;
       }
     }
  }
  text("The sum is " + counter + "!", 215, 575);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY, numOfDots;
  double randNum;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    numOfDots = 0;
  }
  void roll()
  {
    randNum = (int)(Math.random()*6)+1;
  }
  void show()
  {
    rect(myX, myY, 35, 35, 5);
    fill(#2656a3);
    if (randNum == 1) { 
      ellipse(myX+17, myY+17, 5, 5);
      numOfDots = 1;
    } else if (randNum == 2) {
      ellipse(myX+17-5, myY+17-5, 5, 5);
      ellipse(myX+17+5, myY+17+5, 5, 5);
      numOfDots = 2;
    } else if (randNum == 3) {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+17, myY+17, 5, 5);
      ellipse(myX+24, myY+24, 5, 5);
      numOfDots = 3;
    } else if (randNum == 4) {
      ellipse(myX+17-8, myY+17-8, 5, 5);
      ellipse(myX+17+8, myY+17-8, 5, 5);
      ellipse(myX+17-8, myY+17+8, 5, 5);
      ellipse(myX+17+8, myY+17+8, 5, 5);
      numOfDots = 4;
    } else if (randNum == 5) {
      ellipse(myX+17-8, myY+17-8, 5, 5);
      ellipse(myX+17+8, myY+17-8, 5, 5);
      ellipse(myX+17-8, myY+17+8, 5, 5);
      ellipse(myX+17+8, myY+17+8, 5, 5);
      ellipse(myX+17, myY+17, 5, 5);
      numOfDots = 5;
    } else {
      ellipse(myX+17-8, myY+17-8, 5, 5);
      ellipse(myX+17-8, myY+17, 5, 5);
      ellipse(myX+17-8, myY+17+8, 5, 5);
      ellipse(myX+17+8, myY+17-8, 5, 5);
      ellipse(myX+17+8, myY+17, 5, 5);
      ellipse(myX+17+8, myY+17+8, 5, 5);
      numOfDots = 6;
    }
     fill(0);
  }
}
