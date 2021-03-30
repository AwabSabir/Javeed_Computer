import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:javed_computer/UI/DashBoard/DashboardScreen.dart';
import 'package:javed_computer/UI/DashBoard/NewsScreen.dart';
import 'package:javed_computer/UI/DashBoard/Profile.dart';


class BottomBar extends StatefulWidget {

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index=0;
  final List<StatefulWidget> Pages=[
    DashboardScreen(),
    NewsScreen(),
    Profile(),


  ];
  void onTapped(int val){
    setState(() {
      index=val;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black45,
        elevation: 10,
        showSelectedLabels: true,
        onTap: onTapped,
        currentIndex: index,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon:
          Icon(Icons.home),
            title: Text("HOME"),
          ),
          BottomNavigationBarItem(icon:
          Icon(FontAwesomeIcons.newspaper),
            title: Text("NEWS UPDATE"),
          ),

          BottomNavigationBarItem(icon:
          Icon(Icons.person),
            title: Text("PROFILE"),
          )
        ],
      ),
    );
  }

}
