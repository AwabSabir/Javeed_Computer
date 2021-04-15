import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:javed_computer/UI/MainScreen.dart';
import 'package:javed_computer/UI/User/LoginScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:javed_computer/Values/Values.dart';
class splachLogo extends StatelessWidget {
  String pathImage;
  splachLogo(String pathImage){
    this.pathImage=pathImage;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height: 200,
      child: AnimatedSplashScreen(
        backgroundColor:ColorsList.appBgColor ,
          splash: pathImage,
          splashTransition: SplashTransition.sizeTransition,
          nextScreen: MainSCreen(),
           duration: 3000,
        pageTransitionType: PageTransitionType.topToBottom,
    ),

    );


  }

}

class btns extends StatefulWidget {
  double height;
  double width;
  Color colr;
  double border;
  Color textColor;
  double fontSize;
  Icon icon;
  String text;
  Function() fun;
  btns({double height,double width,Color colr,double border,Color textColor,double fontSize, Icon icon, String text,Function() fun}){
    this.width=width;
    this.height=height;
    this.colr=colr;
    this.border=border;
    this.text=text;
    this.textColor=textColor;
    this.icon=icon;
    this.fun=fun;

  }
  @override
  _btnsState createState() => _btnsState();
}

class _btnsState extends State<btns> {
  _btnsState(){

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(widget.border)
      ),
        child: FlatButton.icon(onPressed:(){
         widget.fun();
        },
          color: widget.colr,
             icon: widget.icon,
          label: Text(widget.text, style: TextStyle(
            fontSize: widget.fontSize,
                color: widget.textColor
          ),),
        ),
    );
  }
  ClickBtn(){
  }
}



