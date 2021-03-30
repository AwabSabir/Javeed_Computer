import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:javed_computer/UI/DashBoard/NewsScreen.dart';

class DashboardCards extends StatelessWidget {
  String text;
  Icon icon=Icon(Icons.shop, size: 40,color: Colors.white,);
  DashboardCards({String text, Icon icon}){
       this.text=text;
       this.icon=icon;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 110,
      width: MediaQuery.of(context).size.width/3,
      child:HomeCard(context),
    );
  }
  Widget HomeCard(BuildContext context){
    return Card(
       color: Colors.lightBlue,
       child: Padding(
         padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
         child: Column(
           children: [
             icon,
             Container(
               decoration: BoxDecoration(
                   color: Colors.white,
                 borderRadius: BorderRadius.circular(10)
               ),
               margin: EdgeInsets.only(top: 5),
              height: 20,

               width: MediaQuery.of(context).size.width,
             child:Center(child: Text("$text")),

             )

           ],
         ),
       ),
    );
  }
}


class RecentCards extends StatefulWidget {
  @override
  _RecentCardsState createState() => _RecentCardsState();
}

class _RecentCardsState extends State<RecentCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width/3,
      child: recentCards(),
    );
  }
  Widget recentCards(){
    return Card(
      color: Colors.white,
      borderOnForeground: false,
      shadowColor: Colors.white12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Colors.blueAccent,
          style: BorderStyle.solid,
          
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
                 Expanded(child: Image.asset("assets/armyjobs.jpg")),
               Text("Army jobs")
          ],
        ),
      ),

    );
  }
}



