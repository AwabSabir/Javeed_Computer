import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:javed_computer/Values/ColorsList.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class InputText extends StatefulWidget {
   String label;
   String placeHolder;
   Icon suffixICon;
   TextInputType textInputType;
   Function validator;
   TextEditingController data;
   InputText({String label,String placeHolder,Icon suffixICon, TextInputType textInputType,
     Function validator,TextEditingController data, }){
     this.label=label;
     this.placeHolder=placeHolder;
     this.suffixICon=suffixICon;
     this.textInputType=textInputType;
     this.validator=validator;
     this.data=data;

   }
  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InputTf(),
    );
  }
  Widget InputTf(){
    return TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      maxLength: 56,
      cursorColor: Colors.lightBlueAccent,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        labelText: widget.label,
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
        helperText: "*Required",
        helperStyle: TextStyle(color: Colors.blueGrey),
        hintText: widget.placeHolder,
        hintStyle: TextStyle(
          color: Colors.white
        ),
        suffixIcon: Visibility(
          visible: false,
          child: IconButton(
            icon:widget.suffixICon,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,),
          gapPadding: 10
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white,)
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,)
        ),
      ),
      validator: widget.validator,
      controller: widget.data,
    );

  }
}

//password TextFiedls
class PasswordTF extends StatefulWidget {
  String label;
  String placeHolder;
  Icon suffixICon;
  bool hindShowPassword=true;
  Function validator;
  TextEditingController data;
  PasswordTF({String label, String placeHolder,Icon suffixICon, bool hindShowPassword,
    Function validator,  TextEditingController data}){
    this.label=label;
    this.suffixICon=suffixICon;
    this.placeHolder=placeHolder;
    this.hindShowPassword=hindShowPassword;
    this.validator=validator;
    this.data=data;

  }
  @override
  _PasswordTFState createState() => _PasswordTFState();
}

class _PasswordTFState extends State<PasswordTF> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PasswrodInputTf(),
    );
  }
  Widget PasswrodInputTf() {
    return TextFormField(
      style: TextStyle(
        color: ColorsList.textinputColor,
      ),
      obscureText:widget.hindShowPassword,
      maxLength: 20,
      cursorColor: Colors.lightBlueAccent,
      decoration: InputDecoration(
        labelText:widget.label,
        labelStyle: TextStyle(
          color: ColorsList.textinputColor,
          fontSize: 20,
        ),
        helperText: "*Required",
        helperStyle: TextStyle(color: Colors.blueGrey),
        hintText: widget.placeHolder,
        hintStyle: TextStyle(
            color: Colors.white
        ),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              if(widget.hindShowPassword){
                widget.suffixICon=Icon(Icons.visibility,color: Colors.white,);
                widget.hindShowPassword=false;
              }
              else{
                widget.suffixICon=Icon(Icons.visibility_off, color: Colors.white,);
                widget.hindShowPassword=true;
              }
            }
            );
          },
          icon: widget.suffixICon,
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,),
            gapPadding: 10
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,)
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,)
        ),
      ),
      validator:widget.validator ,
      controller: widget.data,
    );
  }
}


//GenderSelector  button
class GenderSelectCard extends StatefulWidget {
  Color colorbg;
  Color TextColor;
  Icon icon;
  String text;
  GenderSelectCard({Color colorbg,Color TextColor,Icon icon, String text}){
      this.colorbg=colorbg;
      this.TextColor=TextColor;
      this.icon=icon;
      this.text=text;
  }
  @override
  _GenderSelectCardState createState() => _GenderSelectCardState();
}

class _GenderSelectCardState extends State<GenderSelectCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child:GenderCArd() ,
    );
  }
  Widget GenderCArd(){
    return Card(
      color: widget.colorbg,
      shadowColor: Colors.blueGrey,
      child:Column(
        children: [
          Spacer(flex: 1,),
         widget.icon,
          Spacer(flex: 1,),
          Text(widget.text, style: TextStyle(
                 color: widget.TextColor,
          ),),
          Spacer(flex: 1,)
        ],
      )
    );
  }
}



class CountryPic extends StatefulWidget {
  @override
  _CountryPicState createState() => _CountryPicState();
}

class _CountryPicState extends State<CountryPic> {
  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      showOnlyCountryWhenClosed: false,
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),

      initialSelection: 'pk',
      showFlag: true,
      flagWidth: 50,
    );
  }
}

//pinCodeTextField
class PinCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 20),
      child: pincode(),
    );
  }
  Widget pincode(){
    return PinCodeTextField(
      autofocus: true,
      hideCharacter: true,
      highlight: true,
      highlightColor: Colors.blue,
      defaultBorderColor: Colors.black,
      hasTextBorderColor: Colors.blue,
      highlightPinBoxColor: Colors.white38.withOpacity(0.6),
      maxLength: 4,
      pinBoxWidth: 40,
      pinBoxHeight: 40,
      pinBoxRadius: 10,
      wrapAlignment: WrapAlignment.spaceAround,
    );
  }
}

//snakbar






