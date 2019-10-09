void rios() {
  float r = (int)random(0, 3);
  float m = map(d,1,32,32,1);
  for (int i = 0; i<r; i++) {
    float ran = random(0, 2);
    int x = 0;
    int y = 0;
    if (ran<1) {
      y = (int)random(0, grid);
      x = (int)random(0, grid);
    } else {
      y = (int)random(0, grid);
      x = (int)random(0, grid);
    }
    boolean dentro = true;
    int max = 0;
    while (dentro || max == 80) {
      int g = (int)random(0, 4);
      switch(g) {
      case 0:
        x += 1;
        if (x>=0 && x<grid && y>=0 && y<grid) {
          if(noise[x+(y*grid)][noise[0].length-1]>0){
            noise[x+(y*grid)][noise[0].length-1] -= m;
          }
        } else {
          g = (int)random(0, 4);
        } 
        break;
      case 1:
        y -= 1;
        if (y>=0 && y<grid && x>=0 && x<grid) {
          if(noise[x+(y*grid)][noise[0].length-1]>0){
            noise[x+(y*grid)][noise[0].length-1] -= m;
          }
        } else {
          g = (int)random(0, 4);
        } 
        break;
      case 2:
        x -= 1;
        if (x>=0 && x<grid && y>=0 && y<grid) {
          if(noise[x+(y*grid)][noise[0].length-1]>0){
            noise[x+(y*grid)][noise[0].length-1] -= m;
          }
        } else {
          g = (int)random(0, 4);
        } 
        break;
      case 3:
        y += 1;
        if (y>=0 && y<grid && x>=0 && x<grid) {
          if(noise[x+(y*grid)][noise[0].length-1]>0){
            noise[x+(y*grid)][noise[0].length-1] -= m;
          }
        } else {
          g = (int)random(0, 4);
        } 
        break;
      }
      
      if (x==0 || x==grid || y==0 || y==grid) {
        dentro = false;
      }
      max++;
    }
  }
}
