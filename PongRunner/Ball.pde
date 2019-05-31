class Ball
{
  int x,y,i;
  int xvel=0; //7
  int yvel=0; //4
  int cScore,uScore;
  int winScore=5;
  String name="Pong";
  String start="Press Enter To Begin";
  String rules="UP and Down Arrows for right side and W and S Keys for left side";
  char restart;
Ball(int X, int Y)
{
  x = X;//20
  y = Y; //30
}
void startGame(int Xvel,int Yvel)
{
  fill(#FF0000);
  textSize(60);
  text(name,375,100);
  textSize(40);
  text(start,255,500);
  textSize(18);
  text(rules,175,550);
  if(key==ENTER)
  {
      bob.xvel=Xvel;
      bob.yvel=Yvel;
      start="";
      rules="";
      name="";
  }
}
void move()
{
  if((x>885&&y>user.y&&y<user.y+50)||(x<15&&y>userTwo.y&&y<userTwo.y+50)) //x>585
     xvel=-1*xvel;
  if(x>900)
  {
    xvel=-1*xvel;
    bob.x=800;
    bob.y=200;
    changeCScore();
  }
  if(x<0)
  {
    xvel=-1*xvel;
    bob.x=100;
    bob.y=200;
    changeUScore();
  }
  if(y>600||y<10) //y>400
    yvel=-1*yvel;
  x = x + xvel; 
  y = y + yvel;
}
void show()
{ 
  fill(#0EFF03);
  ellipse(x,y, 30, 30); 
  fill(#FF0000);
  //textSize(32);
  //text(cScore,200,35);
  //text(uScore,700,35);
}
void showScore()
{
  fill(#FF0000);
  textSize(32);
  text(cScore,200,35);
  text(uScore,700,35);
}
void changeCScore()
{
  bob.cScore++;
}
void changeUScore()
{
  bob.uScore++;
}
void whoWins()
{
  if(bob.cScore==winScore)
    gameOverPage("Left Side Wins!");
  if(bob.uScore==winScore)
    gameOverPage("Right Side wins!");
}
void gameOverPage(String x)
{
  bob.x=0;
  bob.y=0;
  //bobTwo.x=0;
  //bobTwo.y=0;
  fill(#FF0000);
  textSize(50);
  text("Game Over",325,200);
  textSize(25);
  text(x,375,250);
  text("Click to Play Again",350,375);
  if(mousePressed)
  {
      bob.uScore=0;
      bob.cScore=0;
      bob.x=300;
      bob.y=200;
      //bobTwo.x=100;
      //bobTwo.y=300;
  }
}
}
