import 'package:flutter/material.dart';
import 'package:tsupocketassistant/main_widgets/app_bar.dart';
import 'package:tsupocketassistant/university_feed/widgets/info_card.dart';

class UniversityFeedPage extends StatefulWidget{

  const UniversityFeedPage({Key key}) : super(key: key);
  @override
  UniversityFeedPageState createState() => UniversityFeedPageState();
}

class UniversityFeedPageState extends State<UniversityFeedPage> {

  Widget build(BuildContext context){
    return Scaffold(
      appBar: TopAppBar(title: "University Feed"),
      body: ListView(
        children: <Widget>[
          
          LimitedBox(
            maxHeight: 200,
            maxWidth: double.infinity,
            child: PageView.builder(
              itemCount: 5,
            scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                  return Image.asset("assets/img/ched-3.jpg");
                },
            )
          ),

          LimitedBox(
            maxHeight: 240,
            maxWidth: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: new EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: Text("NEWS", style: TextStyle(fontSize: 24)),
                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return NewsCard(id: index, title: "Test $index", image: "assets/img/sampleNews.jpg");
                  },
                ))
              ],
            )
          ),
          LimitedBox(
              maxHeight: 240,
              maxWidth: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: new EdgeInsets.fromLTRB(8, 8, 0, 8),
                    child: Text("ANNOUCEMENTS", style: TextStyle(fontSize: 24)),
                  ),

                  Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return AnnouncementCard(id: index, title: "Test $index", image: "assets/img/sampleNews.jpg");
                        },
                      ))
                ],
              )
          )

        ],
      )
    );
  }
}