import 'package:flutter/material.dart';

class ViewTitle extends StatelessWidget{
  final String title;
  ViewTitle({@required this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: new EdgeInsets.all(20),
      child: Text(this.title, style: new TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }
}