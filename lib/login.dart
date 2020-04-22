import 'package:flutter/material.dart';
import 'package:tsupocketassistant/main_view.dart';
import 'package:tsupocketassistant/main_widgets/buttons.dart';
import 'package:tsupocketassistant/university_feed/university_feed_page.dart';

class LoginView extends StatefulWidget{

  @override
  LoginViewState createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> {

  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        padding: new EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset("assets/icons/app_logo.png", width: 250, height: 250),
              Text("E.M.B.E.R.S.", style: new TextStyle(fontSize: 36, fontWeight: FontWeight.w300)),
              TsuIconButton(icon: "assets/icons/TSUC.png", text: "Sign In using your TSU Office 365 Account",
                  onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainView()));
                  }),
              RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  children: [
                    TextSpan(text: "© CCS Programmers’ Den 2020", style: new TextStyle(fontSize: 14)),
                    TextSpan(text: "\nv0.0.1+1", style: new TextStyle(fontSize: 12)),
                  ]
                )
              )
            ],
        ),

      )
    );
  }
}