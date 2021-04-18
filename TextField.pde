class TextField extends Button{
  
  TextField(float _x, float _y, float _w, float _h, String _text, color _strokeColor, float _value) {
    super(_x, _y, _w, _h, _text, _strokeColor, _value);
  }
  
  void display(){
   fill(0);
    textSize(24);
    textAlign(LEFT);
    super.display();
    textAlign(CENTER);
    if(isActive == true){
      super.strokeColor = color(0,255,0);
    }else{
      super.strokeColor = color(0);
    }
  }
  boolean isActive = false;
  
   void changeActiveState(){
    isActive = !isActive;
  }
  
  boolean registerPress(){
    if(super.registerPress()){
      changeActiveState();
    }
    return false;
  }
}
