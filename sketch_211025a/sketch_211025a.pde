int n = 50;
int[] x = new int [n];
int[] y = new int [n];

void setup() {
  size(500, 500);
  textSize(36);
  for (int i=0; i<n; i++) {
    x[i]=i*10;
    y[i]=250;
  }
}

void draw() {
  background(0);
  text("Trykket på:", 200, 400);
  text(key, 400, 400);
  for (int i=0; i<x.length; i++) {
    circle(x[i], y[i], 10);
  }
}

void keyPressed() {
  if (key=='w')y[0]=y[0]-10;
  if (key=='s')y[0]=y[0]+10;
  if (key=='a')x[0]=x[0]-10;
  if (key=='d')x[0]=x[0]+10;

  for (int i=x.length-1; i>0; i--) {
    x[i]=x[i-1];
    y[i]=y[i-1];
  }
}
