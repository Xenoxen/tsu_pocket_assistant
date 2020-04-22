import 'package:flutter/material.dart';

class TsuAppTheme{

  static ThemeData mainTheme() {
    return ThemeData(
      backgroundColor: Color(0xff373737),
      canvasColor: Color(0xff212121),
      primaryColor: Color(0xffFF8828),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
          fontSize: 16,
            fontWeight: FontWeight.w300
        ),
        headline: TextStyle(
          color: Colors.white
        ),
        subhead: TextStyle(
            color: Colors.white
        ),
        caption: TextStyle(
          color: Colors.grey
        ),
        subtitle: TextStyle(
          color: Colors.white
        ),
        button: TextStyle(
          color: Colors.white
        ),
        body1: TextStyle(
          color: Colors.white
        ),
        body2: TextStyle(
          color: Colors.white
        ),
      ),
      dividerColor: Color(0xffFF8828),
      tabBarTheme: TabBarTheme(
        indicator: new BoxDecoration(
          color: Color(0xffFF8828),
        ),
        labelColor: Colors.white
      ),
    );
  }
}