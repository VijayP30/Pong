Ball bob;
ComputerPaddle paddle;
UserPaddle user;
//EndGame finish;
void setup()
{
  bob = new Ball();
  paddle = new ComputerPaddle();
  user = new UserPaddle();
  //finish = new EndGame();
  size(600, 400); 
}
void draw()
{ 
  background(#000000); 
  bob.move(); 
  bob.show();
  paddle.show();
  user.move();
  user.show();
  bob.whoWins();
  //finish.whoWins();
  
}
