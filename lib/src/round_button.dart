import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {@required this.text,
      @required this.onPressed,
      this.width = 200.0,
      this.color});

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double width;

  @override
  Widget build(BuildContext context) {
    var _color = color;
    _color ??= Theme.of(context).accentColor;
    return SizedBox(
        width: width,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          color: _color,
          child:
              Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
          onPressed: onPressed,
        ));
  }
}
