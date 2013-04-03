/* 
 * Simple example code for Peggy 2.0, using the Peggy2 library, version 0.2.
 *
 * Initialize a single frame buffer array, draw a few dots, one at a time it with dots, and display it.
 */

#include <Peggy2.h>

Peggy2 displayArea;     // Make a first frame buffer object, called displayArea.
   
void setup() {          // Run once, when the sketch starts.

  displayArea.HardwareInit();   // Call this once to init the hardware. 
                                // (Only needed once, even if you've got lots of frames).
     
  // Manually write sample pattern to buffer...
  int i, j;
  for (i=0; i < 25; i++) {
    for (j=0; j < 25; j++) {
      displayArea.SetPoint(i, j);
    }
  }
}


void loop() {                // Run over and over again.
  displayArea.RefreshAll(1); // Draw frame buffer one time...
}

