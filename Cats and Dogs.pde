 PImage img;
PImage img2;
PImage img3;
PImage img4;
int lastSecond;

int pressed= 0;
int pressedState =0;

class Movement {
  int centerX, centerY, offset1, offset2, offsetX1, offsetX2, r1, r2, r3;
  boolean keys[];    // In this array, the index corresponds with W,S,A,D.

  int xVelocity, yVelocity;



  // constructor
  Movement() {
    centerX = round(random(0, width));
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    r1 = 40;
    r2 = 20;
    r3 = 15;
    keys = new boolean [4];
  }

  void display() {
    if (pressedState ==1) { 
      image(img, centerX, centerY, width/5, height/5);
    } else {
      image(img3, centerX, centerY, width/5, height/5);
    }
  }
  void time() {
    textSize(20);
    fill(255, 0, 0);
    int m=minute(), s=second(), h=hour();
    text(h + ":" + m + ":" + s, 5, 20);
  }


  void toy() {
    if (pressedState ==1) {
      image(img2, random(800), random(600), width/10, height/10);
    } else { 
      image(img4, random(800), random(600), width/5, height/5);
    }
  }

  void update() {
    if (keys[0]) {
      yVelocity = -5;
    }
    if (keys[1]) {
      yVelocity = 5;
    }
    if (keys[2]) {
      xVelocity = -5;
    }
    if (keys[3]) {
      xVelocity = 5;
    }
    if (!keys[2] && !keys[3]) { // if both Left and Right are released, horizontal velocity should be zero.
      xVelocity = 0;
      //println("no left or right");
    }
    if (!keys[0] && !keys[1]) { // if both Up and Down are released, vertical velocity should be zero.
      yVelocity = 0;
      //println("no left or right");
    }
    centerX += xVelocity;
    centerY += yVelocity;
  }

  void keyPressed() {
    if (key == 'w') {
      keys[0] = true;
    } 
    if (key == 's') {
      keys[1] = true;
    }
    if (key == 'a') {
      keys[2] = true;
    }
    if (key == 'd') {
      keys[3] = true;
    }
  }

  void keyReleased() { // the 
    println("Keyreleased " + key);
    if (key == 'w') {
      keys[0] = false;
    } 
    if (key == 's') {
      keys[1] = false;
    }
    if (key == 'a') {
      keys[2] = false;
    }
    if (key == 'd') {
      keys[3] = false;
    }
  }
}

Movement newMovement;

void setup() {
  size(800, 600);
  img = loadImage ("https://cloud.githubusercontent.com/assets/16229364/11830489/5ea5b776-a36b-11e5-8c2b-dee5bc6c618a.png");
  img2 = loadImage ("https://cloud.githubusercontent.com/assets/16229364/11830513/8d795706-a36b-11e5-8124-4befe5fac5d8.png");
  img3 = loadImage ("https://cloud.githubusercontent.com/assets/16229364/11830501/749ab4c8-a36b-11e5-8e9c-2c8cd90fdd7b.png");
  img4 = loadImage ("https://cloud.githubusercontent.com/assets/16229364/11830457/02d70ae4-a36b-11e5-9265-d19146d88d60.png");
  newMovement = new Movement();
}

void draw() {
  background(255);
  newMovement.update();
  newMovement.display();
  newMovement.time();
  newMovement.toy();
}

void keyPressed() {
  newMovement.keyPressed(); // the global keyPressed function calls the Movement class keyPressed method.
}

void keyReleased() {
  newMovement.keyReleased(); // the global keyReleased function calls the Movement class keyReleased method.
}

void mousePressed() {
  pressed = pressed + 1;
  pressedState = (pressed % 2);
}
