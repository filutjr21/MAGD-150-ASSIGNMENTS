color endColor = color(255, 0, 255);
color floorColor = color(255, 255, 0);
color mouseOverColor = color(0, 0, 0);

PImage mazePage;
PImage endPage;
PImage startPage;

color green =  color(0, 255, 0);
color yellow =  color(255, 255, 0);
color blue =  color(0, 0, 255);



boolean inGame = false;
boolean won = false;

PVector UL;
PVector LL;
PVector UR;
PVector LR;

int pressedState =0;

Timer myTimer = new Timer();

void setup() {
  size(1280, 800);
  noStroke();
  imageMode(CENTER);
  endPage = loadImage("https://cloud.githubusercontent.com/assets/16229364/11830723/4574a06c-a36d-11e5-937b-32cf8f164dea.png");
  mazePage = loadImage("https://cloud.githubusercontent.com/assets/16229364/11830699/17934130-a36d-11e5-941d-4379ef9e2f7f.png");
  startPage = loadImage("https://cloud.githubusercontent.com/assets/16229364/11830714/2d5a666a-a36d-11e5-9b6a-f82310638db4.png");

  image(mazePage, width/2, height/2);
  loadPixels();

  UL = new PVector(150, 740);
  UR = new PVector(164,740);
  LL = new PVector(150, 800);
  LR = new PVector(164, 800);
  //  println("cats are cool");
}


void draw() {



  if (pressedState == 0) {
    image(startPage, width/2, height/2);
  }
  if (pressedState == 1 ) {

    image(mazePage, width/2, height/2);


    if (mouseX > 146 && mouseX < 194 && mouseY > 740 && mouseY < 800 ) {
      fill(yellow);
      if (mousePressed) {
        inGame = true;
        myTimer.reset();
      }
    } else {
      fill(blue);
    }

    if (inGame) {
      fill(yellow);
    }

    rect(UL.x, UL.y, LR.x/4, LR.y);

    if (inGame) {
      mouseOverColor = get(mouseX, mouseY);
      myTimer.getPassedTime();
      myTimer.display();
      if (mouseOverColor == endColor) {
        inGame = false;
        won = true;
      }
      if (mouseOverColor != floorColor) {
       // println(mouseX, mouseY);
        inGame = false;
      }
    }
  }
  if (won) {
    image(endPage, width/2, height/2);
   // fill(0, 0, 0);
    textSize(65);
    fill(255, 255, 255);
    text(myTimer.passedTime, 652, 524);   
  }
}


void keyPressed() {
  if (key == 'p') {
    pressedState = pressedState + 1;
    if (pressedState >=3) {
      pressedState = 0;
    }
  }
  if (won) {
    if (key == 'r') {
      pressedState = 1;
      won = false;
    }
  }
}

  
  class Timer {
  float startTime;
  float passedTime;

  Timer() {
  }

  void reset() {
    startTime = millis();
  }

  void getPassedTime() {
    passedTime = millis() - startTime;
  }

  void display() {
    textSize(25);
    fill(255, 0, 0);
    rect(1000,0,150,67);
    fill(0,0,0);
    text(passedTime, 1000, 40);
    //println(passedTime);
  }

}


