import 'package:flutter/material.dart';

class GradeCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).backgroundColor,
      child: ListTile(
          title: Text("Subject Title"),
        subtitle: Text("Subject Code"),
      ),
    );
  }
}