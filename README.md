# FinalProject
# Pong - a fun pong liked game where one or two users can enjoy a remake of a classic by hitting a ball back and forth.

   My project is a pong like game. It has a starting page in which allows the user to pick easy or hard mode which would adjust the speed of the ball in both the x axis and y axis. The user(s) will use either the up and down arrow keys or the w and s arrow keys. If the ball hits the users' paddles, the ball will change direction. If the ball goes past the paddles and hits the black, the score counter will increment by one. Once the score hits winning score which is 5 in this case, then the game will end and prompt a restart to the game.

### Difficulties or opportunities you encountered along the way.

The toughest part was... figuring out how to keep certain actions going once I release a key.

### Most interesting piece of your code and explanation for what it does.

```Java
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
```
This is the code that will cause the ball to bounce of the paddles. It will also stop the ball if it passes the paddle and increment the score by one for the other user which is show on the scoreboard at the top of the screen.
## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

* **Pranav Vijay** 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
