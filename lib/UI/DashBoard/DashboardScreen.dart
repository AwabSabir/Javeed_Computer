import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:javed_computer/UI/DashBoard/NewsScreen.dart';
import 'package:javed_computer/Weights/DashboardWeights/Dashboarweights.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Javed Computer", style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Roboto'
          ),),
        )
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Row(
               children: [
                 Expanded(child: DashboardCards(text: "SHOP",icon: Icon(Icons.shop, size: 40,color: Colors.white,),)),
                 Expanded(child: DashboardCards(text: "JOB",icon: Icon(Icons.shopping_bag_outlined, size: 40,color: Colors.white,),)),
                 Expanded(child: DashboardCards(text: "ADDMISSION",icon: Icon(Icons.school_rounded, size: 40,color: Colors.white,),)),

               ],
             ),
              Row(
                children: [
                  Expanded(child: DashboardCards(text: "VIDEOS",icon: Icon(Icons.play_arrow, size: 40,color: Colors.white,),)),
                  Expanded(child: DashboardCards(text: "FREE TV",icon: Icon(Icons.tv, size: 40,color: Colors.white,),)),
                  Expanded(child: DashboardCards(text: "NEWS",icon: Icon(FontAwesomeIcons.newspaper, size: 40,color: Colors.white,),)),


                ],
              ),
              Row(
                children: [
                  Expanded(child: DashboardCards(text: "TOP POST",icon: Icon(Icons.post_add, size: 40,color: Colors.white,),)),
                  Expanded(child: DashboardCards(text: "ABOUT",icon: Icon(Icons.account_box_outlined, size: 40,color: Colors.white,),)),
                  Expanded(child: DashboardCards(text: "PRIVACEY",icon: Icon(Icons.privacy_tip_outlined, size: 40,color: Colors.white,),)),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
              ),
              Text("----------------------", style: TextStyle(
                color: Colors.black12,
                fontSize: 20,
              ),),
              Row(
                children: [
                  Text("Recent Post", style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),),
                  Spacer(flex: 1,),
                  btn(),
                ],
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RecentCards(),
                    RecentCards(),
                    RecentCards(),
                    RecentCards(),
                    RecentCards(),

                  ],
                  
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
  Widget btn(){
    return FlatButton(onPressed: (){},
      child: Text("See More", style: TextStyle(
        color: Colors.blueAccent,
        fontSize: 15
      ),),
    );
  }
}
