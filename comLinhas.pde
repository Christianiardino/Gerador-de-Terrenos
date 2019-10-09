void comLinhas() {
  int c = (noise[0].length)-1;
  for (int x = 0; x<width; x++) {
    for (int y = 0; y<height; y++) {
      if (x%d == 0 && y%d == 0) {
        int temp = ((x)/d)+(((y-d)/d)*grid);
        stroke(colorAltura(noise[(x/d)+((y/d)*grid)][5]));
        if (temp > 0) {
          line(x, y, noise[(x/d)+((y/d)*grid)][c], x, y-d, noise[temp][c]);
        }
        temp = ((x)/d)+(((y+d)/d)*grid);
        if (temp<noise.length) {
          line(x, y, noise[(x/d)+((y/d)*grid)][c], x, y+d, noise[temp][c]);
        }
        temp = ((x-d)/d)+(((y)/d)*grid);
        if (temp > 0) {
          line(x, y, noise[(x/d)+((y/d)*grid)][c], x-d, y, noise[temp][c]);
        }
        temp = ((x+d)/d)+(((y)/d)*grid);
        if (temp<noise.length) {
          line(x, y, noise[(x/d)+((y/d)*grid)][c], x+d, y, noise[temp][c]);
        }
      }
    }
  }
}
