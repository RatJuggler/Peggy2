/*
 * Simple animated Xmas scenes.
 */

#include <Peggy2.h>

Peggy2 frame1;
Peggy2 frame2;
Peggy2 frame3;
Peggy2 frame4;
   
void setup() {
  frame1.HardwareInit();
  frame1.Clear();
  frame2.Clear();
  frame3.Clear();
  frame4.Clear();  
  for (int x = 0; x < 24; x++) {
    for (int y = 0; x < 24; y++) {
      frame1.SetPoint(x, y);
    }
  }
}

void loop() { 
  frame1.RefreshAll(500);
  frame2.RefreshAll(500);
  frame3.RefreshAll(500);
  frame4.RefreshAll(500);
}

