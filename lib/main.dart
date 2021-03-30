//import links
import 'package:flutter/material.dart';
import 'package:javed_computer/UI/DashBoard/Profile.dart';
import 'package:javed_computer/UI/User/PhoneNumber.dart';
import 'package:javed_computer/UI/User/UserScreen2.dart';


import 'UI/DashBoard/BottonBar.dart';
import 'UI/DashBoard/NewsScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomBar(),
    );
  }
}
