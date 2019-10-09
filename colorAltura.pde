color colorAltura(float altura) {
  float rio = 10;
  float areia = 15;
  float grama = 25;
  float pedra = 45;
  float r = 0, g = 0, b = 0;
  if (altura<=rio) {
    r = 0;
    g = map(altura, 0, 10, 0, 95);
    b = map(altura, 0, 10, 50, 255);
  }
  if (altura>rio && altura<=areia) {
    r = 255;
    g = 236;
    b = 129;
  }
  if (altura>areia && altura<=grama) {
    r = map(altura, 15, 25, 62, 55);
    g = map(altura, 15, 25, 214, 191);
    b = map(altura, 15, 25, 22, 15);
  }
  if (altura>grama && altura<=pedra) {
    r = map(altura, 25, 45, 112, 165);
    g = map(altura, 25, 45, 165, 167);
    b = map(altura, 25, 45, 98, 164);
  }
  if (altura>pedra) {
    r = map(altura, 45, 100, 191, 250);
    g = map(altura, 45, 100, 191, 250);
    b = map(altura, 45, 100, 191, 250);
  }
  color c = color(r, g, b);
  return c;
}
