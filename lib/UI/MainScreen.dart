import 'package:flutter/material.dart';
import 'package:javed_computer/UI/User/LoginScreen.dart';
import 'package:javed_computer/UI/User/RegistrationPAge.dart';
import 'package:javed_computer/Weights/Weights.dart';

class MainSCreen extends StatefulWidget {
  @override
  _MainSCreenState createState() => _MainSCreenState();
}

class _MainSCreenState extends State<MainSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(margin: EdgeInsets.only(top: 300),),
              Container(
                width: 100,
                height: 100,
                child: Image.asset("assets/splach.png"),
              ),
              Container(margin: EdgeInsets.only(top: 20),),
              Text("Welcome to javed Computer \n get lot of Exating things", style: TextStyle(
                color:Colors.white,
                fontFamily: 'Roboto',
                fontSize: 30,

              ),),
             Container(margin: EdgeInsets.only(top: 40),),
              btns(height: 50,width: 300,icon:Icon(Icons.lock,size: 30,color: Colors.white,),fontSize: 30,text: "Login",
                  border: 20,colr: Colors.blue,textColor: Colors.white,
                fun: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              Container(margin: EdgeInsets.only(top: 40),),
              btns(height: 60,
                width: 280,
                icon:Icon(Icons.person,size: 30,color: Colors.blueGrey.withOpacity(0.6),),
                fontSize:40,
                text: "Registration",
                border: 10,colr: Colors.white.withOpacity(0.6),textColor: Colors.black,
                fun: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationScreen()),
                  );
                },
              ),

            ],
          ),
        ),
      )
    );
  }

}
