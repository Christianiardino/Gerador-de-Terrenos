void montanhas(int qtaMontanhas) {
  int espalha = 64;
  for (int i = 0; i<qtaMontanhas; i++) {
    int gridMontanha = (int)random(0, grid*grid);
    int raio = (int)random(3, 8);
    int x = gridMontanha%grid;
    int y = (gridMontanha-x)/grid;
    for (int xk = x-espalha; xk<x+espalha; xk++) {
      for (int yk = y-espalha; yk<y+espalha; yk++) {
        int temp = (xk)+((yk)*grid);
        if (temp > 0 && temp < noise.length && yk<=grid && yk>=0) {
          noise[temp][noise[0].length-1] += random(150, 200)/(abs(xk-x)+abs(yk-y)+2);
          if (abs(yk-y)<raio && abs(xk-x)<raio && yk!=y && xk!=x) {
            float d = abs(dist(x,y,xk,yk));
            noise[temp][noise[0].length-1] = noise[temp][noise[0].length-1]*log(raio-d+2);
          }
        }
      }
    }
  }
}
