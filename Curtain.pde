class Curtain{
    float x,y;
    int startTime;
    int delayTime = 200; // 2 seconds between each black
    int numBlacks = 12;
    boolean removing = false;

    Curtain(float initX, float initY){
        x = initX;
        y = initY;
    }

    void display() {

      noStroke();

      int elapsed = millis() - startTime;
      int step = elapsed / delayTime; // step increases every 2 seconds

      // Transition on change of openSign state:
      if (openSign.isOpen && !removing) {
        // switched to open -> start removing
        removing = true;
        startTime = millis();
        step = 0;
      } else if (!openSign.isOpen && removing) {
        // switched to closed -> start adding
        removing = false;
        startTime = millis();
        step = 0;
      }

      if (!removing && !openSign.isOpen) {
        // SHOW blacks one by one (indices 0 .. numBlacks-1)
        int blacksToShow = min(step, numBlacks - 1);
        for (int i = 0; i <= blacksToShow; i++) {
          black(x, y, 17 * i);
        }
      } else if (removing && openSign.isOpen) {
        // REMOVE blacks one by one starting from the last
        // NOTE: do NOT clamp to 0 here; allow negatives to represent "none left"
        int blacksLeft = (numBlacks - 1) - step; // >=0 -> draw 0..blacksLeft, <0 -> draw none

        if (blacksLeft >= 0) {
          for (int i = 0; i <= blacksLeft; i++) {
            black(x, y, 17 * i);
          }
        } else {
          // all removed: draw nothing (optionally do other logic here)
          // we could also stop the removing cycle or set a flag if desired
        }
      }
    }

    void black(float x, float y, float n) {
      fill(0);
      rect(x, y + 12 + n, 197, 5);
      fill(#2b261c);
      rect(x, y + 19 + n, 197, 10);
      fill(#715f56);
      rect(x, y + 25 + n, 197, 5);
    }
  }