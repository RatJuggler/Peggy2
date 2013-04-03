/*
 * Spiral effect.
 */

#include <Peggy2.h>

Peggy2 frame1;
int w, dw;
int x, y, dx, dy;

void setup() {
  frame1.HardwareInit();
  w = 0;
  dw = 24;
  x, y = 0;
  dx = 1;
  dy = 0;
}

void loop() {
  frame1.Clear();
  spiral(x,y);
  x = x + dx;
  y = y + dy;
  if (x == dw && y == w) {
    dx = 0;
    dy = 1;
  } else if (x == dw && y == w) {
    dx = -1;
    dy = 0;
  } else if (x == w && y == dw) {
    dx = 0;
    dy = -1;
  } else { // x == w && y == w)
    if (w == 11) {
      w = 0;
    } else {
      w++;
    }
    dw = 24 - w;
    dx = 1;
    dy = 0;
  }
  frame1.RefreshAll(200);  
}

void spiral(int x, int y) {
  //frame1.MoveTo(0, 0);
  //frame1.LineTo(x, y);
  frame1.SetPoint(x, y);
}

