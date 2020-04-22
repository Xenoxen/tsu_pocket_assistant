import 'package:flutter/material.dart';
import 'package:tsupocketassistant/directory/directory_page.dart';
import 'package:tsupocketassistant/main_widgets/app_bar.dart';
import 'package:tsupocketassistant/profile/profile_page.dart';
import 'package:tsupocketassistant/university_feed/university_feed_page.dart';

class MainView extends StatefulWidget{

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 2;
  List<Widget> pages = [

    Text("Consultation"),
    Text("Manual"),
    UniversityFeedPage(key: PageStorageKey('uFeed')),
    DirectoryPage(key: PageStorageKey('directory')),
    StudentProfileView(key: PageStorageKey('profile'))
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: btmBar(),
      body: SafeArea(
        child: PageStorage(
            child: pages[this._selectedIndex],
            bucket: this.bucket
        )
      )
    );
  }

  Widget btmBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color(0xff333333),
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.forum), title: Text("Consult")),
          BottomNavigationBarItem(icon: Icon(Icons.import_contacts), title: Text("Manual")),
          BottomNavigationBarItem(icon: Icon(Icons.public), title: Text("News Feed")),
          BottomNavigationBarItem(icon: Icon(Icons.call), title: Text("Directory")),
          BottomNavigationBarItem(icon: CircleAvatar(
            backgroundImage: AssetImage('assets/img/m.jpg'),
          ), title: Text("Profile")),
        ],
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.grey[600],
      currentIndex: this._selectedIndex,
      onTap: _onItemTapped,
    );
  }
}