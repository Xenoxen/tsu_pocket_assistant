import 'package:flutter/material.dart';
import 'package:tsupocketassistant/profile/widgets/ehistory_tile.dart';

class EnrollmentHistoryView extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return HistoryTile(title: "2019-2020 2ND SEMESTER", regId: "26405209", regDate: "Jan 2, 2020 9:43AM");
          },
        )
    );
  }
}