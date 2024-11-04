

import processing.sound.*;


AudioIn in;
Delay delay;
Sound s;

SoundFile[] file;

// Define the number of samples
int numsounds = 8;
int value = 0;

int backgroundColor[] = {255, 255, 255};
float volume = 0.4;
void setup() {
  size(500, 500);

  file = new SoundFile[numsounds];
  s = new Sound(this);
  
    
  // create a reverb effect
  for (int i = 0; i < numsounds; i++) {
    file[i] = new SoundFile(this, (i+1) + ".wav");
  }
}

void draw() {
  
  
  int value = 0;
  background(backgroundColor[0], backgroundColor[1], backgroundColor[2]);

 
    
  // start the input stream
  
  
  
  float amplitude = map(mouseY, 0, height, 1, 0.0);

  
  s.volume(amplitude);

  {
    if ( key == '1') {
      rect(20, 50, 50, 400); // rect 1
      fill(value);
      value = 255;
    }

    if (key == '2') {
      rect(80, 50, 50, 350); // rect 2
      fill(value);
      value = 255;
    }

    if (key == '3') {
      rect(140, 50, 50, 300);//rect 3
      fill(value);
      value= 255;
    }

    if (key == '4') {
      rect(200, 50, 50, 250);//rect 4
      fill(value);
      value= 255;
    }

    if (key == '5') {
      rect(260, 50, 50, 150);//rect 5
      fill(value);
      value=255;
    }

    if (key == '6') {
      rect(320, 50, 50, 100);// rect 6
      fill(value);
      value=255;
    }

    if (key == '7') {
      rect(380, 50, 50, 50); // rect 7
      fill(value);
      value=255;
    }

    if (key == '8') {
      rect(440, 50, 50, 20); //rect 8
      fill(value);
      value=255;
    }
  }
}


void mousePressed() {

  float amp = map(mouseY, mouseX, height, 0.4, 0.0);
  {
    file[1].play(amp);
  }
  
}

float num = 0.1;
void keyPressed() {
  
  boolean validKey = true;

  switch(key) {
  case '1':
    file[0].play(0.5, 1.0);
    if (value == 0) {
    } else {
      value= 255;
      break;
    }
  case '2':
    file[1].play(0.5, 1.0);
    break;

  case '3':
    file[2].play(0.5, 1.0);
    break;

  case '4':
    file[3].play(0.5, 1.0);
    break;

  case '5':
    file[4].play(0.5, 1.0);
    break;

  case '6':
    file[0].play(1.0, 1.0);
    break;

  case '7':
    file[1].play(1.0, 1.0);
    break;

  case '8':
    file[2].play(1.0, 1.0);
    break;


  case '0':
    if (key == '0');
    {
      in = new AudioIn(this, 0);
    
  // create a delay (echo) effect
  delay = new Delay(this);
    
  // start the input stream
  in.play();

  // Patch the delay
  delay.process(in, 5);
  delay.time(0.5);

     
      break;
    }
    // no valid key was pressed, store that information
  default:
    validKey = false;
  }

  // change the background color
  if (validKey) {
    for (int i = 0; i < 3; i++) {
      backgroundColor[i] = int(random(255));
    }
  }
} 
