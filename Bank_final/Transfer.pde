class Transfer extends Button {

  Transfer(float _x, float _y, float _w, float _h, String _text, color _strokeColor, float _value) {
    super(_x, _y, _w, _h, _text, _strokeColor, _value);
  }

  void display() {
    super.text = text;
    super.display();
  }

  boolean registerPress() {
    if (super.registerPress()) {
      transferTrigger();
    }
    return false;
  }

}
