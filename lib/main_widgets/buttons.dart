import 'package:flutter/material.dart';

class TsuIconButton extends StatelessWidget {
  final String text;
  final String icon;
  final Function onPressed;
  TsuIconButton({@required this.onPressed, @required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: new EdgeInsets.all(15),
      color: Color(0xff2E2E2E),
      textColor: Colors.white,
      onPressed: this.onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(this.icon, width: 30, height: 30),
          Text(this.text)
        ],
      ),
    );
  }
}