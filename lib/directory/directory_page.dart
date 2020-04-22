import 'package:flutter/material.dart';
import 'package:tsupocketassistant/directory/widgets/directory_data.dart';
import 'package:tsupocketassistant/directory/widgets/directory_tile.dart';
import 'package:tsupocketassistant/main_widgets/app_bar.dart';

class DirectoryPage extends StatelessWidget{
  DirectoryPage({Key key}) : super(key: key);
  DirectoryData directory = new DirectoryData();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: TopAppBar(title: "Directory"),
      body: Column(
        children: <Widget>[

          Expanded(
            child: ListView.builder(
              itemCount: directory.data.length,
              itemBuilder: (context, index) {
                return DirectoryTile(office: directory.data[index][0], head: directory.data[index][1], local: directory.data[index][2], number: directory.data[index][3]);
              },
            )
          )

        ],
      )
    );
  }
}