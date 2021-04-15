//import links
import 'package:flutter/material.dart';
import 'package:javed_computer/UI/DashBoard/About.dart';
import 'package:javed_computer/UI/DashBoard/Profile.dart';
import 'package:javed_computer/UI/SplachScreen.dart';


import 'UI/DashBoard/BottonBar.dart';
import 'UI/DashBoard/NewsScreen.dart';
import 'UI/User/UserScreen2.dart';

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
      home:RegistrationScreen2(),
    );
  }
}
