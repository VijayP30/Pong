Ball bob;
ComputerPaddle paddle;
UserPaddle user;
void setup()
{
  bob = new Ball();
  paddle = new ComputerPaddle();
  user = new UserPaddle();
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
  
}
