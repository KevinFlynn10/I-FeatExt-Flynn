//base code from processingjs
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress dest;

float scale;
int value = 0;
int startTime = 0, stopTime = 0;
boolean running = false;  

void setup(){
  size(200, 200);
  noStroke();
  scale = width/10;
  oscP5 = new OscP5(this,9000);
  dest = new NetAddress("127.0.0.1",6448);
}

void draw(){ 
    for(int i=0; i<scale; i++) {
      colorMode(RGB, (i+1) * scale * 10);
      fill(millis()%((i+1) * scale * 10) );
      rect(i*scale, 0, scale, height);
    }
}

void start(){
        startTime = millis();
        running = true;
}

void stop(){
    stopTime = millis();
    running = false;
    sendOsc();
}
int getElapsedTime() {
    int elapsed;
    if (running) {
         elapsed = (millis() - startTime);
    }
    else {
        elapsed = (stopTime - startTime);
    }
    return elapsed;
}
int sec(){
  return (getElapsedTime() / 1000) % 60;
}

void keyPressed() {
  if (value == 0) {
    start();
    value = 255;
  } else {
    stop();
    value = 0;
  }
}

void sendOsc() {
  OscMessage msg = new OscMessage("/wek/inputs");
  msg.add((float)sec());
  oscP5.send(msg, dest);
}