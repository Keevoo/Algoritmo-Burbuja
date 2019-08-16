int[] array = new int[12];
   void setup() {
     size(1300, 600);
     for (int i=0; i<array.length; i++) {
       array[i] = (int)random(100, 1000);
     }
     frameRate(6);
   }
   int i=0;
   int temp;
   void draw() {
     background(180);
 
     for (int j=0; j<array.length; j++) {
       if (array[i]<array[j]) {
         temp = array[j];
         array[j] = array[i];
         array[i] = temp;
       }
        stroke(0);
       //strokeWeight(2);
       fill(0, 255, 0);
       rectMode(CORNER);
       rect(100+(100*j), j+450, 50, array[j]*(-1));
       fill(0, 0, 0);
       text(array[j], 100+(100*j), 500+j);
     }
     i++;  
     if (i>array.length-1)
       noLoop();
   }
