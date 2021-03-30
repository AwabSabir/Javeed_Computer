import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:javed_computer/UI/MainScreen.dart';
import 'package:javed_computer/Weights/Weights.dart';
import 'dart:ui';
import 'package:page_transition/page_transition.dart';
class SplachScreen extends StatefulWidget {

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
@override
  void initState() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blue,
  ));

    super.initState();

  }
  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.top, SystemUiOverlay.bottom]);

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                      splachLogo("assets/splach.png"),
              Text("Javed Pc", style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: 'Roboto'
              ),)

            ]
        ),
        
      ),
    );
  }
}
