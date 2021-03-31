import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:javed_computer/Weights/DashboardWeights/ProfileWidget.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back , color: Colors.white,),
        ),
        title: Text("Profile",style:  TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),),
        // actions: [
        //   IconButton(icon: Icon(Icons.more_vert,color: Colors.black45,), onPressed: (){})
        // ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            ProfileBackground(
              email: "awabsabir373@gmail.com",
              profileNAme: "Awab",
            ),
            BodyProflile()
          ],
        ),
      ),
    );
  }
  BodyProflile(){
    return Container(
      width: MediaQuery.of(context).size.width/0.8,
      height: MediaQuery.of(context).size.height/2.2,
      margin: EdgeInsets.only(left: 40,right: 40,bottom: 10),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.6),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ProfileCards(
            icon: Icon(Icons.person),
            text: "Profile",
            iconbg: Colors.green,
          ),
          ProfileCards(
            icon: Icon(Icons.settings),
            text: "Setting",
            iconbg: Colors.amberAccent,
          ),
          ProfileCards(
            icon: Icon(Icons.monetization_on_outlined),
            text: "Donation",
            iconbg: Colors.pinkAccent,
          ),
          ProfileCards(
            icon: Icon(Icons.update),
            text: "Update",
            iconbg: Colors.lightBlueAccent,
          ),
          ProfileCards(
            icon: Icon(Icons.login),
            text: "Log Out",
            iconbg: Colors.purple,
          ),

        ],
      ),
    );
  }

}
