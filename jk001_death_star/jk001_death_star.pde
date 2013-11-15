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

