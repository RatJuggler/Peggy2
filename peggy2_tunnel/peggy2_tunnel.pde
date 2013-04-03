/*
 * Tunnel effect.
 */

#include <Peggy2.h>

#define BOXES 5
#define GAP 3

Peggy2 frame1;
int box[BOXES];

void setup() {
  frame1.HardwareInit();
  for (int i=0; i < BOXES; i++) {
    box[i] = -GAP * i;
  }
}

void loop() {
  frame1.Clear();
  for (int i=0; i < BOXES; i++) {
    drawBox(box[i]);
    if (box[i]++ > 11) box[i] = -GAP;
  }
  frame1.RefreshAll(200);  
}

void drawBox(int x) {
  frame1.MoveTo(x, x);
  frame1.LineTo(24-x, x);
  frame1.LineTo(24-x, 24-x);
  frame1.LineTo(x, 24-x); 
  frame1.LineTo(x, x);
}

