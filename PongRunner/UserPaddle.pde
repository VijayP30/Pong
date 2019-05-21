class UserPaddle
{
  int y;
UserPaddle()
{
  y=175;
}
void move()
{
  if(key==CODED)
  {
    if (keyCode== UP || y>345)
      y-=5;
    if (keyCode== DOWN || y<0)
      y+=5;  
  }

}
void show()
{
  fill(#0EFF03);
  rect(580, y, 10, 50);
}
int getUserY()
{
  return y;
}
}
