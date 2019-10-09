int grid = 80;
int d = 8;
float a = 0;
float [][] noise = new float[grid*grid][6];

void setup() {
  size(640, 640, P3D);//tamanho tem que ser d*grid
  terrenoDesnivelado();
  offsetAltura();
  rios();
  montanhas((int)random(0,8));
} 

void draw() {
  background(125);
  translate(0, 0, -250);
  rotateX(PI/4);
  translate(width/2, height/2, 0);
  rotateZ(a);
  a += 0.01;
  a = a%(PI*2);
  translate(-width/2, -height/2, 0);
  comLinhas();
  //comBox();
}
