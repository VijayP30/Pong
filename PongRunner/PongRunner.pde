Ball bob;
UserPaddle user;
UserTwoPaddle userTwo;
Middle mid;
void setup()
{
  bob = new Ball(300,300);
  user = new UserPaddle();
  userTwo = new UserTwoPaddle();
  mid = new Middle();
  size(900,600);
}
void draw()
{ 
  background(#000000); 
  fill(#0EFF03);
  rect(0,0,900,5);
  rect(0,595,900,5);
  mid.show();
  bob.startGame(10,4);
  bob.move(); 
  bob.show();
  bob.showScore();
  user.move();
  user.show();
  userTwo.move();
  userTwo.show();
  bob.whoWins();
}
