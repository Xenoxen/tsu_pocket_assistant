import 'package:flutter/material.dart';

class InfoView extends StatelessWidget{
  final int id, type;
  final String image, title, text;
  InfoView({@required this.id, @required this.type, @required this.image, @required this.title, this.text = "TESTIKLES TEXT"});

  @override
  Widget build(BuildContext context){

    String heroType;
    switch(this.type){
      case 1:
        heroType = "news";
        break;

      case 2:
        heroType = "ann";
        break;
    }
    return Scaffold(
      body: Column(
        children: <Widget>[
          Hero(
            tag: "$heroType-image-${this.id}",
            child: Image.asset(this.image)
          ),
          Hero(
            tag: "$heroType-title-${this.id}",
            child: Text(this.title)
          )

        ],
      )
    );
  }
}