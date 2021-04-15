import 'package:flutter/material.dart';
import 'package:javed_computer/ValidationMixen/Validtion_Maxin.dart';
import 'package:javed_computer/Weights/UserWeights/RegistrationScreenWeights.dart';
import 'package:javed_computer/Values/Values.dart';

import 'UserScreen2.dart';

class RegistrationScreen extends StatefulWidget {


  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> with Validation_Maxion{
  final globalKey = GlobalKey<ScaffoldState>();
  bool isFname=true;
  bool isName=true;
  bool isPassword=true;
  bool emailError=true;
  bool iconVisble=true;
  TextEditingController fname=TextEditingController();
  TextEditingController lname=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController cPassword=TextEditingController();
  final formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      backgroundColor: ColorsList.appBgColor,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(Margins.bodyPadding),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 100, bottom: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 50, color: Colors.blue,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only( bottom: 20),
                    child: Text(Strings.regTx, style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    ),),
                  ),

                  InputText(
                    label: Strings.namelabelfName,
                    placeHolder: "Jhon",
                    suffixICon: Icon(isFname ? Icons.check_circle : Icons.error,
                      color: isName ? Colors.white : Colors.red,
                    ),
                    textInputType: TextInputType.text,
                    validator: NameValidation,
                    data:fname,

                  ),
                  Container(margin: EdgeInsets.only(top: 20),),
                  InputText(
                    label: Strings.namelabel_lName,
                    placeHolder: "Stephan",
                    suffixICon: Icon(isName ? Icons.check_circle : Icons.error,
                      color: isName ? Colors.white : Colors.red,
                    ),
                    textInputType: TextInputType.text,
                    validator:NameValidation,
                    data: lname,

                  ),
                  Container(margin: EdgeInsets.only(top: 20),),
                  InputText(
                    label: Strings.passwordLabel,
                    placeHolder: "you@example.com",
                    suffixICon: Icon(emailError ? Icons.check_circle : Icons.error,
                      color: emailError ? Colors.white : Colors.red,
                    ),
                    textInputType: TextInputType.emailAddress,
                    validator: EmailValidation,
                    data: email,

                  ),
                  Container(margin: EdgeInsets.only(top: 20),),
                  PasswordTF(
                    label: Strings.cPasswordLabel,
                   suffixICon: Icon(Icons.visibility_off,color: Colors.white,),
                    placeHolder: "Password",
                    hindShowPassword: true,
                    validator: PasswordValidation,
                    data: password,
                  ),
                  Container(margin: EdgeInsets.only(top: 20),),
                  PasswordTF(
                    label: Strings.cPasswordLabel,
                    suffixICon: Icon(Icons.visibility_off,color: Colors.white,),
                    placeHolder: "C password",
                    hindShowPassword: true,
                    validator: PasswordValidation,
                    data: cPassword,
                  ),
                  roundbtn(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget roundbtn(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 60,
      height: 60,
      child: CircleAvatar(
        backgroundColor: Colors.yellow,
        child: IconButton(
          onPressed: (){


            if(formKey.currentState.validate() && bothPasswordChecker(password.text, cPassword.text)){
             // print(email.text.trim());
             _setEMailError(true);
             _SetErrorName(true);
             _SetErrorFName(true);
             _SetErrorPassword(true);
           print(fname.text);
             print(lname.text);
             print(password.text);
             print(cPassword.text);
            }
            else {
              if(!bothPasswordChecker(password.text, cPassword.text)){
                final snak = SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text('Both password not same'),

                );

                // Find the Scaffold in the widget tree and use
                // it to show a SnackBar.
                globalKey.currentState.showSnackBar(snak);
              }
              ErrorSetter();

            }
          },
          icon: Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
        )
      ),
    );
  }

  void _setEMailError(bool error){
    setState(() {
      emailError=error;
      if(error==false){
        iconVisble=true;
      }
    });
  }
  void _SetErrorName(bool error){
    setState(() {
      isName=error;
    });
  }
  void _SetErrorFName(bool error){
    setState(() {
      isFname=error;
    });
  }
  void _SetErrorPassword(bool error){
    setState(() {
      isPassword=error;
    });
  }


  ErrorSetter(){
    setState(() {
      _setEMailError(EmailValidation==null);
      _SetErrorName(NameValidation==null);
      _SetErrorFName(NameValidation==null);
      _SetErrorPassword(NameValidation==null);
    });

  }

  bool bothPasswordChecker(val1 , val2){
    return  val1==val2;
  }



}
