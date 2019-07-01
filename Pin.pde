class Pin{
  float x,y; //表示座標
  float size; //長さ
  float max,value; //最大値、パラメータ値
  float angle; //角度
  color col; //色
  
  //--
  Pin(float x, float y, float size, float max, color col){
    this.x = x;
    this.y = y;
    this.size = size;
    this.max = max;
    this.col = col;
  }
  
  //--表示
  void show(){
    pushMatrix();
    translate(x, y);
    stroke(col);
    rotate(radians(270));
    angle = (value / max) * 2 * PI;
    line(0, 0, size * cos(angle), size * sin(angle));
    popMatrix();
  }
  
}