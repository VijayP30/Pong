class UserPaddle
{
  int y;
UserPaddle()
{
  y=50;
}
void move()
{
  if(key==CODED)
  {
    if (keyCode== UP)
      y-=5;
    if (keyCode== DOWN)
      y+=5;  
  }

}
void show()
{
  fill(#EDFF00);
  rect(580, y, 10, 50);
}
int getX()
{
  return 580;
}
int getY()
{
  return y;
}
}
