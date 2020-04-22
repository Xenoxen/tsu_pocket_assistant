import 'package:flutter/material.dart';
import 'package:tsupocketassistant/university_feed/views/info_details.dart';

class NewsCard extends StatelessWidget{
  final int id;
  final String image, title, text;

  NewsCard({@required this.id, @required this.image, @required this.title, this.text = "TESTIKLES"});

  Widget build(BuildContext context){
    return Padding(
      padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => InfoView(type: 1, id: this.id, image: this.image, title: this.title)));
        },
        child: Container(
            width: 180,
            height: 180,
            color: Color(0xff373737),
            child: Column(
              children: <Widget>[
                Hero(
                  tag: 'news-image-$id',
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(this.image),
                        )
                    ),
                  ),
                ),

                Padding(
                    padding: new EdgeInsets.all(4),
                    child: Hero(
                      tag: 'news-title-$id',
                      child: Text(this.title, textAlign: TextAlign.center)
                    )
                )
              ],
            )
        )
      )
    );
  }
}

class AnnouncementCard extends StatelessWidget{
  final int id;
  final String image, title, text;

  AnnouncementCard({@required this.id, @required this.image, @required this.title, this.text = "TESTIKLES"});

  Widget build(BuildContext context){
    return Padding(
        padding: new EdgeInsets.fromLTRB(3, 0, 3, 0),
        child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InfoView(type: 2, id: this.id, image: this.image, title: this.title)));
            },
            child: Container(
                width: 180,
                height: 180,
                color: Color(0xff373737),
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: 'ann-image-$id',
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(this.image),
                            )
                        ),
                      ),
                    ),

                    Padding(
                        padding: new EdgeInsets.all(4),
                        child: Hero(
                            tag: 'ann-title-$id',
                            child: Text(this.title, textAlign: TextAlign.center)
                        )
                    )
                  ],
                )
            )
        )
    );
  }
}