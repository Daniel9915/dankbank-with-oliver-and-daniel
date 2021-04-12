class Component{
  float x,y,w,h,value;
  color strokeColor;
  String text;
  
  Component(float _x, float _y, float _w, float _h, String _text, color _strokeColor, float _value){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = _text;
    strokeColor = _strokeColor;
    value = _value;
  }
  
  void display(){
    stroke(strokeColor);
    fill(255);
    rect(x,y,w,h);
    fill(0);
    textSize(24);
    text(text, x+100,y+75);
  }
  
  

}
