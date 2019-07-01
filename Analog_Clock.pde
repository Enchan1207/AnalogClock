Pin pins[];

void setup(){
  size(400, 400);
  
  pins = new Pin[3];
  pins[0] = new Pin(width / 2, height /2, 80, 12, #FFFFFF);
  pins[1] = new Pin(width / 2, height /2, 100, 60, #cccccc);
  pins[2] = new Pin(width / 2, height /2, 120, 60, #aaaaaa);
}

void draw(){
  background(0x0);
  strokeWeight(1);
  //時刻設定
  pins[0].value = hour();
  pins[1].value = minute();
  pins[2].value = second();
  
  //表示
  drawFrame();
  for(int i = 0; i < 3; i++){
    pins[i].show();
  }
}

void drawFrame(){
  pushMatrix();
  noFill();
  translate(width / 2, height / 2);
  ellipse(0, 0, 250, 250);
  for(int i = 0; i < 12; i++){
    line(125 * cos(radians(30 * i)), 125 * sin(radians(30 * i)), 105 * cos(radians(30 * i)), 105 * sin(radians(30 * i)));
  }
  popMatrix();
}