int pressed= 0;
int pressedState =0;
color bc;
PImage img;
int x;

void setup() {
  size(1280, 800);
  rectMode(CENTER);
  img = loadImage("https://cloud.githubusercontent.com/assets/16229364/11830576/1e7ddc54-a36c-11e5-9c39-280e3934385f.jpg");
}

void draw() {
  if (pressedState == 1) {
    textSize(58);
    fill(#0A0606);
    text("Professor: Write a 10 page paper by tonight", 25, 100);
    textSize(80);
    text("Me:Yeah no homework", 200, 700);
    image(img, 400, 225);
    if (keyPressed) {
      while (x < 200) {
        fill(random(255), random(255), random(255));
        rect(random(1280), random(800), random(200), random(200));
        x = x + 1;
      }
    }
  } else {
    textSize(58);
    fill(#0A0606);
    text("Professor: You have no homework tonight", 25, 100);
    textSize(80);
    text("Me:Yeah no homework", 200, 700);
    image(img, 400, 225);

    if (keyPressed) {
      while (x < 200) {
        fill(random(255), random(255), random(255));
        rect(random(1280), random(800), random(200), random(200));
        x = x + 1;
      }
    }
  }
}

void mousePressed() {
  pressed = pressed + 1;
  pressedState = (pressed % 2);
  bc = color(random(255), random(255), random(255));
  x = 0;
  background(bc);
}
