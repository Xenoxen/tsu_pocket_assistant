import 'package:flutter/material.dart';
import 'package:tsupocketassistant/main_widgets/buttons.dart';

class HistoryTile extends StatelessWidget{

  final String title, regId, regDate, college, program, major, year;

  HistoryTile({@required this.title, @required this.regId, @required this.regDate, @required this.college, @required this.program, this.major, @required this.year});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).backgroundColor,
      child: ListTile(
          title: Text(this.title),
          subtitle: Text("RegID: ${this.regId} | Reg.Date: ${this.regDate}", style: new TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
          trailing: Icon(Icons.pageview, color: Colors.white),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => Dialog(
                backgroundColor: Theme.of(context).backgroundColor,
                child: Padding(
                  padding: new EdgeInsets.all(25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      RichText(
                        textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                                TextSpan(text: this.title, style: new TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

                              ]
                          )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  children: [
                                    TextSpan(text: "\n${this.regId}"),
                                    TextSpan(text: "\nRegistration ID", style: new TextStyle(fontSize: 10)),
                                  ]
                              )
                          ),
                          RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  children: [
                                    TextSpan(text: "\n${this.regDate}"),
                                    TextSpan(text: "\nRegistration Date", style: new TextStyle(fontSize: 10)),
                                  ]
                              )
                          ),
                        ],
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                                TextSpan(text: "\n${this.college}"),
                                TextSpan(text: "\nCollege", style: new TextStyle(fontSize: 10)),
                              ]
                          )
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                                TextSpan(text: "\n${this.program}"),
                                TextSpan(text: "\nProgram", style: new TextStyle(fontSize: 10)),
                              ]
                          )
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                                TextSpan(text: "\n${this.major}"),
                                TextSpan(text: "\nMajor", style: new TextStyle(fontSize: 10)),
                              ]
                          )
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              children: [
                                TextSpan(text: "\n${this.year}"),
                                TextSpan(text: "\nYear Level", style: new TextStyle(fontSize: 10)),
                              ]
                          )
                      ),
                      Padding(
                        padding: new EdgeInsets.only(top: 30),
                        child: Column(
                          children: <Widget>[
                            FlatButton(color: Theme.of(context).primaryColor, textColor: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Pre-Registration"),
                                    Icon(Icons.file_download),
                                  ],
                                ), onPressed: () {}),
                            FlatButton(color: Theme.of(context).primaryColor, textColor: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Certificate of Registration"),
                                    Icon(Icons.file_download),
                                  ],
                                ), onPressed: () {}),
                            FlatButton(color: Theme.of(context).primaryColor, textColor: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Student Actual Load"),
                                    Icon(Icons.file_download),
                                  ],                                ), onPressed: () {}),
                          ],
                        )
                      )
                    ],
                  ),
                ),
              )
            );
          }
      ),
    );
  }
}