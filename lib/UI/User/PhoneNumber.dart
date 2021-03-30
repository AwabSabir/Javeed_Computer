import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:javed_computer/ValidationMixen/Validtion_Maxin.dart';
import 'package:javed_computer/Weights/UserWeights/RegistrationScreenWeights.dart';

import 'CodeVariFaction.dart';

class GetPhoneNumberScreen extends StatefulWidget {
  @override
  _GetPhoneNumberScreenState createState() => _GetPhoneNumberScreenState();
}

class _GetPhoneNumberScreenState extends State<GetPhoneNumberScreen>with Validation_Maxion {
  TextEditingController phonNumber=TextEditingController();
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child:Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 150, bottom: 20),
                ),
                  Text("Phone number", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                ),
                CountryPic(),

                InputText(
                  label: "Phone Number",
                  placeHolder: "+92300000000",
                  suffixICon: Icon(Icons.check_circle, color: Colors.white,),
                  textInputType: TextInputType.phone,
                  validator: PhoneNumValidation,
                  data: phonNumber,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                ),
                submitButton(),
              ],
            ),
          ) ,
        ),
      ),
    );
  }
  Widget submitButton(){
    return Container(
      width: 200,
      height: 40,
      child: RaisedButton(
        onPressed: (){
           if(formKey.currentState.validate()){
              print(phonNumber.text);
           }
           else{
             formKey.currentState.validate();
           }
        },
        color: Colors.white,
        child: Text("Submit", style: TextStyle(
          color: Colors.blue,
          fontSize: 20,
        ),),
      ),
    );
  }
}
