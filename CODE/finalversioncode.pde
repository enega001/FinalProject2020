import processing.sound.*;
import ddf.minim.*;

AudioPlayer[] player = new AudioPlayer[4];
Minim minim;
AudioPlayer track; //background track
//int red, green, blue;
int keyIndex = 0; 

void setup() {
  size(2560, 1600);
  background(255);
  
   minim = new Minim(this);
   
    track = minim.loadFile("track.wav"); //background track loaded in
    track.loop(); // looped to play all the time
   
 /* player [0] = minim.loadFile("1.wav");
  player [1] = minim.loadFile("2.wav");
  player [2] = minim.loadFile("3.wav");
  player [3] = minim.loadFile("4.wav");  */
  
  //Load 5 soundfiles from a folder in a for loop. 
 for (int i = 0; i < player.length; i++) {
     int temp = (i+1);
     Integer obj = new Integer(temp);
     String str4 = obj.toString();
    player[i] = minim.loadFile(str4 + ".wav");
    
    }  
 }
void draw() {
  
for (int i = 0; i < player.length; i++) {
 ellipse(700,450, player[0].left.get(1)*1000, 600); //draws ellipses for each audio track
 ellipse(700,450, player[1].left.get(1)*1000, 600);
 ellipse(700,450, player[2].left.get(1)*1000, 600);
 ellipse(700,450, player[3].left.get(1)*1000, 600);
 
    }
  
}

void keyPressed() {
  
  // Set a random background color each time you hit then number keys
  //red=int(random(255));
 // green=int(random(255));
  //blue=int(random(255));

  switch(key) {
  case 'w': 
    keyIndex = 0;
    player[0].rewind();
    player[0].play(); // each key is assigned a colour to make it easier to tell the sounds apart
    background(189,26,26); //red
    break; 
  case 's':
    keyIndex = 1;
    player[1].rewind();
    player[1].play();
    background(53,189,26); //green
    break;
  case 'f':
    keyIndex = 2;
    player[2].rewind();
    player[2].play();
    background(26,64,189); //blue 
    break;
  case 'g':
    keyIndex = 3;
    player[3].rewind();
    player[3].play();
    background(189,26,189); //purple
    break;
  }
} 

//This was my first version of the code for the keys. 
//I initially had 2 separate processing files for the keys and the background track
// which I then brought together into 1 working doument (the code above, i.e my final version)
// as I loaded the files by using Mimic. With mimic I was able to create audio responsive images
//therefore futher improve my code technically 

  
  /*AudioDevice device;
  SoundFile[] file;
  AudioPlayer player;
  int red, green, blue;
  
  void setup() {
    size(640, 360);
    background(255);
    
    device = new AudioDevice(this, 48000, 32); // device w low buffer size
    
    file = new SoundFile[4]; // array that contains 4 empty soundfiles
    
    
    // loading 4 sounds into a loop
    
    for (int i = 0; i < file.length; i++) {
      file[i] = new SoundFile(this, (i+1) + ".wav");
      
    }
    
  }
  void draw() {
    background( red, green, blue);
  }
    
  void keyPressed() {
    
   // Set a random background color each time you hit then number keys
  //red=int(random(255));
 // green=int(random(255));
  //blue=int(random(255));
    // Assign a sound to each number on your keyboard
    switch(key) {
    case 'w': 
      file[0].play();
      background(189,26,26); // each key has a different colour
      break;
    case 's':
      file[1].play();
      background(53,189,26);
      break;
    case 'f':
      file[2].play();
      background(26,64,189);
      break;
    case 'g':
      file[3].play();  
      background(189,26,189);
      break;
    }

}*/
