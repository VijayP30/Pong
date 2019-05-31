class UserTwoPaddle
{
  int y;
UserTwoPaddle()
{
  y=250;
}
void move()
{
  if(keyPressed&&key=='w'||y>555) //y>345
  {
      y-=6;    
  }
  if(keyPressed&&key=='s'||y<-5)
  {
    y+=6;
  }

}
void show()
{
  fill(#0EFF03);
  rect(0, y, 10, 50);
}
}
