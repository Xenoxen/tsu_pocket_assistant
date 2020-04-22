import 'package:flutter/material.dart';
import 'package:tsupocketassistant/main_widgets/app_bar.dart';
import 'package:tsupocketassistant/profile/views/enrollment_history.dart';
import 'package:tsupocketassistant/profile/views/grades.dart';

class StudentProfileView extends StatefulWidget{

  String name, number;
  StudentProfileView({Key key, this.name = "Frolyn M. Raguindin", this.number = "2013102929"}) : super(key: key);
  @override
  StudentProfileViewState createState() => StudentProfileViewState();
}

class StudentProfileViewState extends State<StudentProfileView>{

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: TopAppBar(title: "Profile"),
          bottomNavigationBar: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: "Digital Identification"),
              Tab(text: "Enrollment History"),
              Tab(text: "Grades"),
              Tab(text: "Class Schedule"),
            ],
          ),
            body: TabBarView(children: <Widget>[
              ListView(
                children: <Widget>[
                  Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.multiply),
                                fit: BoxFit.cover,
                                image: AssetImage("assets/img/ccs.jpg")
                            )
                        ),
                      ),
                      Padding(
                          padding: new EdgeInsets.all(14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image.asset("assets/icons/TSUC.png", width: 50, height: 50),
                                RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(text: "Republic of the Philippines\n", style: new TextStyle(fontSize: 12, letterSpacing: 1)),
                                          TextSpan(text: "TARLAC STATE UNIVERSITY\n", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                          TextSpan(text: "Tarlac City", style: new TextStyle(fontSize: 10, letterSpacing: 1)),
                                        ]
                                    )
                                ),
                                Image.asset("assets/icons/CCSLogo.png", width: 50, height: 50)
                              ]
                          )
                      ),

                      Positioned(
                        bottom: -60,
                        right: 120,
                        child: SizedBox(
                            width: 140,
                            height: 140,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(image: AssetImage("assets/img/m.jpg"))
                            )
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: new EdgeInsets.only(top: 80),
                      child: Container(
                        height: 250,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            //Student Name
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    children: [
                                      TextSpan(text: "${widget.name.toUpperCase()}\n", style: new TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                                      TextSpan(text: "Name", style: new TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal, fontSize: 12)),
                                    ]
                                )
                            ),
                            //Student Number
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    children: [
                                      TextSpan(text: "${widget.number}\n", style: new TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                                      TextSpan(text: "Student Number", style: new TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal, fontSize: 12)),
                                    ]
                                )
                            ),
                            //Latest Enrollment
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    children: [
                                      TextSpan(text: "January 14, 2020\n", style: new TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                                      TextSpan(text: "Latest Enrollment", style: new TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.normal, fontSize: 12)),
                                    ]
                                )
                            ),
                          ],
                        ),
                      )
                  ),
                ],
              ),
              EnrollmentHistoryView(),
              GradesView(),
              Center(child: Text("Class Schedule"))
            ],)
        ));
  }
}