class Button extends Component {

  Button(float _x, float _y, float _w, float _h, String _text, color _strokeColor, float _value) {
    super(_x, _y, _w, _h, _text, _strokeColor, _value);
  }

  boolean registerPress() {
    if (mouseX > super.x && mouseX < super.x + super.w) {
      if (mouseY > super.y && mouseY < super.y + h) {
        return true;
      }
    }
    return false;
  }
}
