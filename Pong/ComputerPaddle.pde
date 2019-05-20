class ComputerPaddle
{
  int x, y;
  int xvel=1; 
  int yvel= 1;
ComputerPaddle()
{
  x=10;
  y=25;
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
  fill(#EDFF00);
  rect(10, y, 10, 50);
}
}
