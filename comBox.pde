void comBox() {
  int c = (noise[0].length)-1;
  for (int x = 0; x<width; x++) {
    for (int y = 0; y<height; y++) {
      if (x%d == 0 && y%d == 0) {
        translate(x,y,noise[(x/d)+((y/d)*grid)][noise[0].length-1]/2);
        float ladoX = dist(x,y,x-d,y);
        float ladoY = dist(x,y,x,y-d);
        stroke(colorAltura(noise[(x/d)+((y/d)*grid)][noise[0].length-1]));
        fill(colorAltura(noise[(x/d)+((y/d)*grid)][noise[0].length-1]));
        box(ladoX, ladoY, noise[(x/d)+((y/d)*grid)][noise[0].length-1]);
        translate(-x,-y,-noise[(x/d)+((y/d)*grid)][noise[0].length-1]/2);
      }
    }
  }
}
