import 'package:flutter/material.dart';
import 'package:tsupocketassistant/login.dart';
import 'package:tsupocketassistant/theme.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: TsuAppTheme.mainTheme(),
      home: LoginView()
    );
  }
}