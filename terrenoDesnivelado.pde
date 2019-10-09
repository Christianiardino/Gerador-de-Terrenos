void terrenoDesnivelado(){
  int nivel = 8;
  for (int i = 0; i<noise.length; i++) {
    for (int k = 0; k<noise[i].length-1; k++) {
      if (i==0) {
        noise[i][k] = random(-nivel/(k+1), nivel/(k+1));
      } else {
        int x = i%grid;
        int y = (i-x)/grid;
        int media = 0;
        int count = 0;
        int temp = (x)+((y-1)*grid);
        if (temp > 0) {
          media+= noise[temp][k];
          count++;
        }
        temp = ((x-1))+(y*grid);
        if (temp > 0) {
          media+= noise[temp][k];
          count++;
        }
        if (count!=0) {
          media = media/count;
          noise[i][k] = random(-(3+media), 3+media);
        }else{
          noise[i][k] = noise[i-1][k]+random(-5,5);
        }
      }
      noise[i][noise[i].length-1] += noise[i][k];
    }
  }
}
