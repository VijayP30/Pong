class Ball
{
  int x, y;
  int xvel=3; 
  int yvel= 3;
Ball()
{
  x = 30;
  y=20; 
}
void move()
{
  if((x>570&&y>user.y&&y<user.y+50)||(x<30&&y>70&&y<330))
    xvel=-1*xvel;
  if(x>620||x<-20)
  {
    xvel=0*xvel;
    endGame();
  }
  if(y>400||y<10)
    yvel=-1*yvel;
  x = x + xvel; 
  y = y + yvel;
}
void show()
{ 
  fill(#0EFF03);
  ellipse(x, y, 30, 30); 
}
void endGame()
{
  fill(#FF0000);
  textSize(50);
  text("Game Over!",175,200);
  //try and make a score system instead of game over
}
}
