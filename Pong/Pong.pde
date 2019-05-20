
class Walker
{
  int x, y;
  int xvel=1; 
  int yvel= 1;
Walker()
{
  x = 50;
  y=50; 
}
void move()
{
  if(x>800 || x<10)
    xvel=-1*xvel;
  if(y>500 || y<10)
    yvel=-1*yvel;
  x = x + xvel; 
  y = y + yvel;
}
void show()
{ 
  fill(#FF0000);
  ellipse(x, y, 30, 30); 
}
}

Walker bob;
ComputerPaddle paddle;
void setup()
{
  bob = new Walker();
  paddle = new ComputerPaddle();
  size(800, 500); 
}
void draw()
{ 
  background(18,18,240); 
  bob.move(); 
  bob.show();
  paddle.move();
  paddle.show();
}
