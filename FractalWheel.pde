
float blockLength;
float angle = PI/12;
float scaleFactor = 0.72;

void setup(){
  //fullScreen();
  size(15360,8640);
  background(255,255,255);
  
  translate(width/2,height/2);
  blockLength = height*2;
  
  wheel(blockLength);
  print("Done!");
  saveFrame();
}

void wheel(float len){
  len *= scaleFactor;
  noStroke();
  fill(255-255*(len/blockLength),0,0);
  
  if(len > 2){
    for(int i=0;i<int((2*PI)/angle);i++){
      pushMatrix();
      rotate(angle * i);
      rect(0,0,len,len/5);
      popMatrix();
    }
    wheel(len);
  }
}