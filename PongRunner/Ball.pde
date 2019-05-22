class Ball
{
  int x, y;
  int xvel=7; 
  int yvel=4;
  int cScore,uScore;
  int winScore=5;
Ball()
{
  x = 30;
  y=20; 
}
void move()
{
  if((x>570&&y>user.y&&y<user.y+50)||(x<30&&y>70&&y<330))
    xvel=-1*xvel;
  if(x>600)
  {
    xvel=-1*xvel;
    changeCScore();
  }
  if(x<0)
  {
    xvel=-1*xvel;
    changeUScore();  
  }
  if(y>400||y<10)
    yvel=-1*yvel;
  x = x + xvel; 
  y = y + yvel;
}
void show()
{ 
  fill(#0EFF03);
  ellipse(x,y, 30, 30); 
  fill(#FF0000);
  textSize(32);
  text(cScore,200,35);
  text(uScore,400,35);
}
void changeCScore()
{
  cScore++;
}
void changeUScore()
{
  uScore++;
}
void whoWins()
{
  if(bob.cScore==winScore)
    gameOverPage("You Lose!");
  if(bob.uScore==winScore)
    gameOverPage("You Win!");
}
}
void gameOverPage(String x)
{
  bob.x=0;
  bob.y=0;
  fill(#FF0000);
  textSize(50);
  text("Game Over",175,200);
  textSize(25);
  text(x,250,250);
  text("Click to Play Again",200,375);
  if(mousePressed)
  {
      bob.uScore=0;
      bob.cScore=0;
      bob.x=30;
      bob.y=20;
  }
}
