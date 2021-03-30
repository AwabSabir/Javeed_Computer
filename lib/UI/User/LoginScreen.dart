import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:javed_computer/UI/DashBoard/BottonBar.dart';
import 'package:javed_computer/ValidationMixen/Validtion_Maxin.dart';
import 'package:javed_computer/Weights/UserWeights/UserWeights.dart';
import 'package:javed_computer/Weights/Weights.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Validation_Maxion {
  bool  isHidden=true;
  bool  isError=true;
  TextEditingController email = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();
  final formKey=GlobalKey<FormState>();
 @override
  void initState() {
   // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          elevation: 0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.blue),
        ),
      backgroundColor: Colors.blue,
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(20),
         child: Center(
           child: Form(
             key: formKey,
             child: Column(
                 children: [
                   Container(
                     width: 100,
                     height: 100,
                     margin: EdgeInsets.only(top: 150, bottom: 20),
                     child: Image.asset("assets/splach.png"),
                   ),
                   Text("Welcome Javed Computer",
                     style:TextStyle(
                       color: Colors.white,
                       fontSize: 30,
                       fontFamily: 'Roboto'
                     ) ,
                   ),
                  Container(
                      margin: EdgeInsets.only(top: 30,bottom: 20),
                      child: emailTF()
                  ),

                   passwordTF(),

                   //password
                   Container(
                     margin: EdgeInsets.only(top: 30,left: 20, bottom: 20),
                     child: LoginBtn(),

                   ),
                   Text("     OR \nlogin with", style: TextStyle(
                     color: Colors.lightBlueAccent,
                     fontSize: 20,
                     fontFamily: 'Roboto'
                   ),),

                   Container(
                     width: 200,
                     height: 70,
                     margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius:BorderRadius.circular(10),
                      ),
                     child: Row(
                       children: [
                         Spacer(flex: 1,),
                         RoundBtn("F",Colors.blue,Colors.white),
                         Spacer(flex: 1,),
                         RoundBtn("G+",Colors.white,Colors.black),
                         Spacer(flex: 1,),
                         RoundBtn("tw",Colors.yellow,Colors.blue),
                         Spacer(flex: 1,),
                       ],
                     ),
                   )
                 ],
             ),
           ),
         ),
       ),
     )

    );
  }

  Widget emailTF(){
   Icon sufixData=Icon(isError ? Icons.check_circle : Icons.error,
                 color: isError ? Colors.white : Colors.red,
   );
    return TextFormField(
      maxLength: 56,
      keyboardType:TextInputType.emailAddress,
      decoration: InputDecoration(
          enabled: true,
          labelText: "Email",
          labelStyle: textSTyle(20, Colors.white),
          icon: Icon(Icons.email_outlined, size: 30, color: Colors.white,),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0,style: BorderStyle.solid,
            ),
          ),
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          focusColor: Colors.white,
          suffixIcon: sufixData,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0,style: BorderStyle.solid),
          ),
          hintText: "you@exmaple.com",
          hintStyle: textSTyle(10,Colors.grey),
      ),
      controller: email,
      validator: EmailValidation,

    );
  }
  textSTyle(double size, Color color){
    return TextStyle(
        color: color,
        fontSize: size
    );
  }
 // password fields
  passwordTF() {
    return TextFormField(
      maxLength: 20,
      obscureText: isHidden,
      decoration: InputDecoration(
          enabled: true,
          labelText: "Password",
          labelStyle: TextStyle(fontSize: 20, color: Colors.white),
          icon: Icon(Icons.lock_open_outlined, size: 30, color: Colors.white,),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0,style: BorderStyle.solid,
            ),
          ),
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          focusColor: Colors.white,
          suffixIcon: InkWell(
              onTap:_showPassword,
              child: Icon(isHidden ? Icons.visibility_off : Icons.visibility, color: Colors.white,)),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0,style: BorderStyle.solid),
          ),
          hintText: "@123",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
      ),
      validator: PasswordValidation,

    );
  }

  void _showPassword() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  void _setErrorIcon(bool error){
   setState(() {
     isError=error;
   });

  }


    LoginBtn(){
   return Container(
     height: 50,
     width: 200,
     decoration: BoxDecoration(
         border: Border.all(color: Colors.white, width: 2.0),
         borderRadius: BorderRadius.circular(2)
     ),
     child:FlatButton(
       onPressed: (){
         if(ErrorSetter()){
           print("Email " + email.text.trim());

         }
         else{
          formKey.currentState.validate();
         }
       },
       color: Colors.white,
       focusColor: Colors.white38,
       textColor: Colors.lightBlueAccent,
       child: Text("Log In" , style: TextStyle(color: Colors.blue, fontSize: 20),
       ),
     )
   );
    }

   ErrorSetter(){
   if(formKey.currentState.validate()){
     _setErrorIcon(true);
     return true;
   }
   else  {
     _setErrorIcon(false);
     return false;
   }

   }






}
