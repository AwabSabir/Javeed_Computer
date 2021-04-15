import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:javed_computer/Values/Values.dart';
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
      backgroundColor: ColorsList.appBgColor,
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                      splachLogo(ImagesLink.splachImg),
              Text(Strings.shopeName, style: TextStyle(
                color: ColorsList.whiteColor,
                fontSize: 50,
                fontFamily: 'Roboto'
              ),)

            ]
        ),
        
      ),
    );
  }
}
