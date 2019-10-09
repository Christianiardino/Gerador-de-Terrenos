void offsetAltura() {
  float ajuste = map(d,1,20,25,-5);
  float offsetAlt = random(0, ajuste);
  for (int i = 0; i<noise.length; i++) {
    noise[i][noise[i].length-1] -= offsetAlt;
  }
}
