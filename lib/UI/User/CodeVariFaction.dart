import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:javed_computer/UI/DashBoard/DashboardScreen.dart';
import 'package:javed_computer/Weights/UserWeights/RegistrationScreenWeights.dart';

import '../MainScreen.dart';
import 'LoginScreen.dart';
class VariFactionScreen extends StatefulWidget {

  @override
  _VariFactionScreenState createState() => _VariFactionScreenState();
}

class _VariFactionScreenState extends State<VariFactionScreen> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: GestureDetector(
          onTap: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainSCreen()),
            );
          },
          child: Container(
            width: 10,
            height: 10,
            padding: EdgeInsets.all(15),
            child: Icon(Icons.cancel, color: Colors.black26,size: 30,),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Text("CO \nDE", style: TextStyle(
                color: Colors.black,
                fontSize: 100
              ),),
              Container(
                margin: EdgeInsets.only(top: 20),
              ),
              Text("Varifaction", style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'
              ),),
              Text("Enter on Time password", style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'
              ),),
              PinCode(),

               Verify(),
            ],
          ),
        ),
      ),
    );
  }
  Widget Verify(){
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 200,
      height: 40,
      child: FlatButton(onPressed: (){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      },
          color: Colors.blue,
          child: Text("VERIFY",style: TextStyle(
            color: Colors.white54
          ),)

      ),
    );
  }

}
