class UserPaddle
{
  int y;
UserPaddle()
{
  y=250;
}
void move()
{
  if(key==CODED)
  {
    if (keyPressed&&keyCode==UP || y>555) //y>345
      y-=6;
    if (keyPressed&&keyCode==DOWN || y<-5)
      y+=6;  
  }

}
void show()
{
  fill(#0EFF03);
  rect(890, y, 10, 50);
}
int getUserY()
{
  return y;
}
}
