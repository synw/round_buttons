import 'package:flutter/material.dart';

class BigRoundButton extends StatelessWidget {
  const BigRoundButton(
      {@required this.text,
      @required this.onPressed,
      @required this.iconData,
      this.width = 150.0,
      this.height = 150.0,
      this.iconSize = 65.0,
      this.fontSize = 20.0,
      this.textColor = Colors.white,
      this.color = Colors.green});

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final IconData iconData;
  final double iconSize;
  final double fontSize;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: RaisedButton(
          elevation: 20.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(250.0)),
          color: color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 22.0, 0, 5.0),
                  child: Icon(
                    iconData,
                    size: iconSize,
                    color: textColor,
                  )),
              Text(text,
                  style: TextStyle(color: textColor, fontSize: fontSize)),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}
