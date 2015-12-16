float xSpeed = 5;
float ySpeed = 1;
float posX = -50;
float posY = 50;


float ballWidth = 50;
float ballHeight = 75;
PImage img;
PImage imgTwo;

void setup()
{

  size(600, 400);
  background(255);
  smooth();
  img = loadImage("https://cloud.githubusercontent.com/assets/16229364/11830553/e6462ab2-a36b-11e5-8268-458b9c06b226.png");
  imgTwo = loadImage("https://cloud.githubusercontent.com/assets/16229364/11830530/bfdca16c-a36b-11e5-865b-af0f0984dcc4.png");
  frameRate(60);
}

void draw()
{

  fill(255, 150);
  rect(0, 0, 
    width, height);

  fill(255, 100, 0);
  // rect(500,110,90,80);
  image(img, posX, posY, width/10, height/10);
  image(imgTwo, 340, 5);


  ySpeed +=1;
  xSpeed *=.9975;
  posX += xSpeed;
  posY += ySpeed;

  // chaning directions after hitting the right wall
  if (posX > width-ballWidth)
  {
    posX=width-ballWidth;
    xSpeed=-xSpeed;
  }

  // changing directions after hitting the left wall
  if (posX<ballWidth-60)
  {
    posX=ballWidth-60;  
    xSpeed=-xSpeed;
  }

  // loose height after each bounce
  if (posY > height-ballHeight/2)
  {
    posY=height-ballHeight/2;
    ySpeed = -ySpeed*.75;
  }

  // slow the ball down faster when it is rolling.
  if (posY > height-ballHeight/2-1)
  {
    xSpeed *=.9975;
  }

  //Scoring points
  if ((posX >= (485))&&(posY <= (180)&&(posY >=(90)))) {
    textSize(random(30));
    fill(random(255), random(255), random(255));
    text("Nice Shot", random(600), random(400));
    text("So Much SWEG", random(600), random(400));
    text("Your so sexy", random(600), random(400));
    text("Awesome" , random(600), random(400));
    text("KOBEEEE" , random(600), random(400));
    xSpeed = 0;
    ySpeed = 0;
  }
}
// re-throw the ball
void mouseDragged()
{
  posX = mouseX;
  posY = mouseY;
  xSpeed = mouseX - pmouseX;
  ySpeed = mouseY - pmouseY;
}
