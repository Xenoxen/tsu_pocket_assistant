import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  double height = 60;
  TopAppBar({@required this.title});
  @override
  TopAppBarState createState() => TopAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class TopAppBarState extends State<TopAppBar>{

  Widget build(BuildContext context){
    return AppBar(
      centerTitle: true,
      title: Text(widget.title.toUpperCase(), style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.w300)),
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }

}