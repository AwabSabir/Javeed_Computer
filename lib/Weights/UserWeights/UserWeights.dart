import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyInputs extends StatefulWidget {
  String label;
  String placHolder;
  Icon icon;
  double fontSize;
  Color textColor;
  double labFontSize;
  TextInputType textInputType;
  Icon suficxIcon;
  bool hidShowPassword=false;
  MyInputs({String label,double labFontSize, TextInputType textInputType, String placHolder,
      Icon icon,double fontSize,Color textColor,Icon suficxIcon, bool hidShowPassword}){
    this.label=label;
    this.placHolder=placHolder;
    this.icon=icon;
    this.textInputType=textInputType;
    this.fontSize=fontSize;
    this.textColor=textColor;
    this.labFontSize=labFontSize;
    this.suficxIcon=suficxIcon;
    this.hidShowPassword=hidShowPassword;
  }


  @override
  _MyInputsState createState() => _MyInputsState();
}

class _MyInputsState extends State<MyInputs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: textFields(),
    );

  }
  Widget textFields(){
    return TextFormField(
      obscureText: widget.hidShowPassword,
      maxLength: 20,
      keyboardType:widget.textInputType,
      decoration: InputDecoration(
        enabled: true,
        labelText: widget.label,
        labelStyle: textSTyle(widget.labFontSize, Colors.white),
        icon: widget.icon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0,style: BorderStyle.solid,
              ),
        ),
        fillColor: Colors.white.withOpacity(0.6),
        filled: true,
        focusColor: Colors.white,
        suffixIcon: widget.suficxIcon,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.0,style: BorderStyle.solid),
        ),
        hintText: widget.placHolder,
        hintStyle: textSTyle(10,Colors.grey),
        helperText: "Abc"
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Please Enter Valid Email';
        }
      },
    );
  }
   textSTyle(double size, Color color){
    return TextStyle(
      color: color,
      fontSize: size
    );
  }

}



//passwordFields
class MyPassword extends StatefulWidget {
  String label;
  String placHolder;
  Icon icon;
  double fontSize;
  Color textColor;
  double labFontSize;
  TextInputType textInputType;
  Icon suficxIcon;
  bool hidShowPassword=false;
  MyPassword({String label,String placHolder,Icon icon,double fontSize, Color textColor
      ,double labFontSize,TextInputType textInputType,Icon suficxIcon,bool hidShowPassword=false}
      ){
    this.label=label;
    this.placHolder=placHolder;
    this.icon=icon;
    this.textInputType=textInputType;
    this.fontSize=fontSize;
    this.textColor=textColor;
    this.labFontSize=labFontSize;
    this.suficxIcon=suficxIcon;
    this.hidShowPassword=hidShowPassword;

  }
  @override
  _MyPasswordState createState() => _MyPasswordState();
}

class _MyPasswordState extends State<MyPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: passwordTextFiled(),
    );
  }

  Widget passwordTextFiled() {
    return TextFormField(
      obscureText: widget.hidShowPassword,
      maxLength: 20,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
          enabled: true,
          labelText: widget.label,
          labelStyle: textSTyle(widget.labFontSize, Colors.white),
          icon: widget.icon,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue, width: 2.0, style: BorderStyle.solid,
            ),
          ),
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          focusColor: Colors.white,
          suffixIcon: IconButton(

            onPressed: (){
               setState(() {
                if(widget.hidShowPassword){
                  widget.suficxIcon=Icon(Icons.visibility, color: Colors.white);
                  widget.hidShowPassword=false;
                }
                else {
                  widget.suficxIcon=Icon(Icons.visibility_off);
                  widget.hidShowPassword=true;
                }
               });
            },
            icon:widget.suficxIcon,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white, width: 2.0, style: BorderStyle.solid),
          ),
          hintText: widget.placHolder,
          hintStyle: textSTyle(10, Colors.grey),
          helperText: "Abc"
      ),

    );
  }

  textSTyle(double size, Color color) {
    return TextStyle(
        color: color,
        fontSize: size
    );
  }

}

class RoundBtn extends StatelessWidget {
  String text;
  Color colorbg;
  Color txColor;
  RoundBtn(String text,Color colorbg, Color txColor){
    this.text=text;
    this.colorbg=colorbg;
    this.txColor=txColor;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _roundBtn(),
    );
  }
   _roundBtn(){
    return CircleAvatar(
      backgroundColor: colorbg,
      child: Text("$text", style: TextStyle(
        color: txColor,
        fontFamily: 'Roboto',
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),),
    );
   }
}
