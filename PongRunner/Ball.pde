class Ball
{
  int x, y;
  int xvel=3; 
  int yvel= 3;
Ball()
{
  x = 25;
  y=20; 
}
void move()
{
  if(x>600||x<25)
    xvel=-1*xvel;
  if(y>400||y<10)
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
