class ComputerPaddle
{
  int x, y, yvel;
ComputerPaddle()
{
  y = 90;
  x = 10;
  yvel = 10;
}
void show()
{
  fill(#0EFF03);
  rect(x, y, 10, 220);
}
}
