// define some variables
int x1=250;
int y1=80;
int xspeed1=10;
int yspeed1=10;
int x2=300;
int y2=80;
int xspeed2=5;
int yspeed2=5;
int x3=350;
int y3=80;
int xspeed3=10;
int yspeed3=10;
int x4=360;
int y4=80;
int xspeed4=4;
int yspeed4=4;

void setup() {
  size(600, 600);
}
void draw() {   
  background(2, 62, 115);
  // draw a lake
  ellipseMode(CENTER);
  noStroke();
  fill(0, 204, 204);
  ellipse(width/2, 560, 600, 40);
  // draw a moon
  fill(248, 202, 77);
  ellipse(60, 60, 60, 60);
  fill(2, 62, 115);
  ellipse(70, 60, 40, 40);
  // draw some flowers
  stroke(0);
  fill(253, 160, 153);
  line(20, 560, 20, 500);
  arc(20, 500, 20, 20, -PI/4, PI+PI/4);
  line(13, 493, 20, 500);
  line(20, 500, 27, 493);
  fill(249, 87, 89);
  line(30, 560, 30, 520);
  ellipse(30, 520, 10, 10);
  fill(249, 189, 127);
  line(40, 560, 40, 480);
  arc(40, 480, 20, 20, -PI/4, PI+PI/4);
  line(40, 480, 34, 473);
  line(40, 480, 46, 473);
  line(55, 560, 55, 450);
  fill(249, 87, 89);
  arc(55, 450, 20, 20, -PI/4, PI+PI/4);
  line(55, 450, 49, 442);
  line(55, 450, 61, 442);
  line(65, 560, 65, 480);
  fill(253, 160, 153);
  ellipse(65, 480, 10, 10);
  //draw butterfly_1
  fill(254, 67, 101);
  bezier(x1, y1, x1-30, y1-30, x1+20, y1-20, x1+30, y1);
  bezier(x1, y1, x1-30, y1+20, x1+20, y1+10, x1+30, y1);
  line(x1+30, y1, x1+35, y1-10);
  line(x1+30, y1, x1+32, y1-15);
  fill(217, 192, 153);
  ellipse(x1+2, y1-10, 10, 10);
  //draw butterfly_2
  fill(253, 116, 0);
  bezier(x2, y2, x2-30, y2-30, x2+20, y2-20, x2+30, y2);
  bezier(x2, y2, x2-30, y2+20, x2+20, y2+10, x2+30, y2);
  line(x2+30, y2, x2+35, y2-10);
  line(x2+30, y2, x2+32, y2-15);
  fill(255, 255, 26);
  ellipse(x2+2, y2-10, 10, 10);
  //draw butterfly_3
  fill(255, 224, 190);
  bezier(x3, y3, x3-30, y3-30, x3+20, y3-20, x3+30, y3);
  bezier(x3, y3, x3-30, y3+20, x3+20, y3+10, x3+30, y3);
  line(x3+30, y3, x3+35, y3-10);
  line(x3+30, y3, x3+32, y3-15);
  fill(232, 64, 90);
  ellipse(x3+2, y3-10, 10, 10);
  //draw butterfly_4
  fill(191, 255, 100);
  bezier(x4, y4, x4-30, y4-30, x4+20, y4-20, x4+30, y4);
  bezier(x4, y4, x4-30, y4+20, x4+20, y4+10, x4+30, y4);
  line(x4+30, y4, x4+35, y4-10);
  line(x4+30, y4, x4+32, y4-15);
  fill(255);
  ellipse(x4+2, y4-10, 10, 10);
  //set moving rate
  frameRate(5);



  //set the conditionals making the butterfly bounce when it reaches the firnge
  y1=y1+yspeed1;
  if ((y1<30)||(y1>540)) {
    yspeed1=yspeed1*-1;
  }
  x1=x1-xspeed1;
  if ((x1<30)||(x1>width-40)) {
    xspeed1=xspeed1*-1;
  }
  x2=x2-xspeed2;
  if ((x2<30)||(x2>width-40)) {
    xspeed2=xspeed2*-1;
  }
  y2=y2+yspeed2;

  if ((y2<30)||(y2>540)) {
    yspeed2=yspeed2*-1;
  }
  if (y2==545) {
    ellipse(width/2, 560, 300, 20);
  }
  x3=x3+xspeed3;
  if ((x3<30)||(x3>width-40)) {
    xspeed3=xspeed3*-1;
  }
  y3=y3+yspeed3;
  if ((y3<30)||(y3>540)) {
    yspeed3=yspeed3*-1;
  }
  y4=y4+yspeed4;

  //set the conditionals making the butterfly bounce when it reaches the firnge
  if ((y4<30)||(y4>540)) {
    yspeed4=yspeed4*-1;
  }
  x4=x4-xspeed4;
  if ((x4<30)||(x4>width-40)) {
    xspeed4=xspeed4*-1;
  }
  //if the butterflies touch the lake, draw a ripple
  if ((y1==550)||(y2==545)||(y3==550)||(y4==544)) {
    stroke(255);
    fill(69, 185, 189);
    ellipse(width/2, 560, 300, 20);
  }
}

