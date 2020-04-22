import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DirectoryTile extends StatelessWidget{

  final String office, head, local, number;
  DirectoryTile({@required this.office, @required this.head, @required this.local, @required this.number});

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 0.0,
      color: Color(0xff2E2E2E),
      child: ListTile(
          title: Text(this.office),
          subtitle: Text("Office Head: $head"),
        onTap: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return Dialog(
                  backgroundColor: Theme.of(context).canvasColor.withOpacity(0.75),
                  elevation: 0.0,
                  child: Padding(
                    padding: new EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        Padding(
                          padding: new EdgeInsets.only(bottom: 30),
                          child: RichText(
                            textAlign: TextAlign.center,
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Are you sure you want to call the ${this.office}?"
                                    ),
                                    TextSpan(
                                      text: "\n\nPhone Number: ${this.number}"
                                    )
                                  ]
                              )
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Ink(
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton(color: Colors.white, icon: Icon(Icons.phone), onPressed: () => launch("tel://0${this.local}${this.number}"))
                            ),
                            Ink(
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: IconButton(color: Colors.white, icon: Icon(Icons.close), onPressed: () {Navigator.pop(context);}),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                );
              }
          );
        },
      )
    );
  }
}