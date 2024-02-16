int num = 150;
boolean leftClicked;
public void setup()
{
  background(192);
  size(500,500);
}

public void fractal(int size, int a, int b)
{
  if(size <= 5)
  {
      fill((int)(Math.random()*25+100));
      noStroke();
      ellipse(a,b,size,size);
  }
  else
  {
    fractal(size/2, a+size/2, b);
    fractal(size/2, a-size/4, b);
    fractal(size/2, a, b+size/2);
    fractal(size/2, a, b-size/2);
  }
}

public void draw()
{
  background(192);
  fractal(num,175,250);
  if(leftClicked == true)
    num+=10;
  else if(num >=150)
    num-=10;
}

public void mousePressed()
{
  if(mouseButton == LEFT) leftClicked = true;
  if(mouseButton == RIGHT) leftClicked = false;
}
