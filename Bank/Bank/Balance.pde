class Balance extends Component{
  int money;
  Balance(float _x, float _y, float _w, float _h, String _text, color _strokeColor, float _value){
  super(_x, _y, _w, _h, _text, _strokeColor, _value);
  }
  
  
  void display(){
    text = str(money) + " DKK";
    super.display();
  }
  
  

}
