float[] dataTime = new float[20];
boolean[] dataError = new boolean[20];

int clickCount = 0;

float currTime = 0;
float startTime = 0;

boolean finished = false;

void setup()
{
  background(125);
  fill(255);
  noStroke();
  PFont fontA = loadFont("courier");
  textFont(fontA, 14);  
}

void draw(){

  // if the time is not over yet
  if (finished == false) {
    console.log(currTime);

    // time is over
    if((currTime - startTime) > 10000){
      console.log(currTime, startTime, "bigger 10sec");
      dataTime[clickCount] = currTime;
      finished = true;
      return;
    }
  } else {
    // show the results
    console.log("Time is over, game finished!");
  }
}

void mousePressed() {

  if (finished == false) {
    
    currTime = millis();
    
    // first click
    if(clickCount == 0) {
      console.log("First Click");
      startTime = currTime;
      dataTime[clickCount] = currTime;
      clickCount++;
      return;
    }

    // already finished
    if(clickCount == 20) {
      finished = true;
      return;
    }

    if(clickCount > 0 && clickCount < 20) {
      dataTime[clickCount] = currTime;
      clickCount++;
    }
    
  }
}