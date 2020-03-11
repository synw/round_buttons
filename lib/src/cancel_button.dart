import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({this.onPressed, this.width = 200.0, this.color});

  final VoidCallback onPressed;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var _onPressed = onPressed;
    _onPressed ??= () => Navigator.of(context).pop();
    var _color = color;
    _color ??= Theme.of(context).primaryColorLight;
    return SizedBox(
        width: width,
        child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            color: _color,
            child: Text("Cancel",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            onPressed: () => _onPressed()));
  }
}
