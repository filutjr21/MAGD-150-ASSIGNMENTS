int x;
int y;
int z;
int j;
int w;

void setup(){
size(1280,800);
background(50);

//triangles
fill(random(255), random(255),random(255));

triangle(600,500,700,500,400,200);
triangle(1000,400,1100,700,1100,500);
triangle(50,700,100,800,150,400);
triangle(1200,100,900,100,1100,200);

//Rectangle
while(x <= 30){
  rectMode(CENTER);
  fill(random(255), random(255),random(255));
  rect(random(1280), random(800), random(200), random(200));
  x = x +1;
}
  
  //Triangle
  while(y <= 30){
  rectMode(CENTER);
  fill(random(255), random(255),random(255));
  triangle(random(1280), random(800), random(1280), random(800), random(1280), random(800));
  y = y +1;
  }
  
  //Ellipses
  while(z <= 30){
  rectMode(CENTER);
  fill(random(255), random(255),random(255));
  ellipse(random(1280), random(800), random(200), random(200));
  z = z +1;
  }
  
  //Lines
    while(j <= 2){
  rectMode(CENTER);
  stroke(20);
  fill(random(255), random(255),random(255));
  line(random(1280), random(800), random(1280), random(800));
  j = j +1;
  }
  
  //Points
    while(w <= 2){
  rectMode(CENTER);
  stroke(20);
  fill(random(255), random(255),random(255));
  point(random(1280), random(800));
  w = w +1;
  }
 
 //arcs
 
 

}
