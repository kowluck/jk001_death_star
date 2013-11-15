// Nov 2013
// http://jiyu-kenkyu.org
// http://kow-luck.com
//
// This work is licensed under a Creative Commons 3.0 License.
// (Attribution - NonCommerical - ShareAlike)
// http://creativecommons.org/licenses/by-nc-sa/3.0/
// 
// This basically means, you are free to use it as long as you:
// 1. give http://kow-luck.com a credit
// 2. don't use it for commercial gain
// 3. share anything you create with it in the same way I have
//
// If you want to use this work as free, or encourage me,
// please contact me via http://kow-luck.com/contact

import processing.opengl.*;

float rotX;
float rotY;
float rotZ;

//========================================
void setup() {
  size(1280, 720, OPENGL);
  frameRate(30);
  rotX = 0;
  rotY = 0;
  rotZ = 0;
}
//========================================
void draw() {
  background(0);
  translate(width/2, height/2);
  growMe();
  drawMe();
  println(frameRate);
}
//========================================
void drawMe() {
  blendMode(ADD);
  noFill();
  stroke(200, 30);
  strokeWeight(3);
  for (int k = 0; k < 4 ; k++) {
    rotateX(radians(rotX));
    for (int j = 0; j < 3; j++) {
      rotateY(radians(rotY));
      for (int i = 0; i < 20; i++) {
        rotateZ(radians(rotZ));
        box(height/2, width/2, height/10);
      }
    }
  }
}
//========================================
void growMe() {
  rotX += 0.2;
  rotY += 0.1;
  rotZ += 0.05;
  if (rotX > 3600) {
    rotX = 0;
  }
  if (rotY > 3600) {
    rotY = 0;
  }
  if (rotZ > 360) {
    rotZ = 0;
  }
}
//========================================
void keyReleased() {
  switch(key) {
  case ' '  : 
    rotX = 0;
    rotY = 0;
    rotZ = 0;
  }
}

