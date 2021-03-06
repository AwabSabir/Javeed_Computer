import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ProfileBackground extends StatefulWidget {
  String profileNAme;
  String email;

  ProfileBackground({String profileNAme,String email}){
    this.profileNAme=profileNAme;
    this.email=email;
  }
  @override
  _ProfileBackgroundState createState() => _ProfileBackgroundState();
}

class _ProfileBackgroundState extends State<ProfileBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          cliped(),
          Positioned(
               top: MediaQuery.of(context).size.height/7.5,
              left: 30,
              child:profile()
          ),
          Positioned(
              top: MediaQuery.of(context).size.height/5.5,
              left: 200,
              bottom: 10,
              child:Column(
                children: [
                  Text(widget.profileNAme, style: TextStyle(color: Colors.white),),
                   Container(margin: EdgeInsets.only(top: 10),),
                  Text(widget.email, style: TextStyle(color: Colors.white54),),
                ],
              ) ),
          Positioned(
              top:MediaQuery.of(context).size.height/2.8,
              left: 40,
              right: 40,
              child: bottomCard())
        ],
      ),
    );
  }


   cliped(){
    return ClipPath(
        clipper: OvalBottomBorderClipper(),
     child: Container(
       width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height/2.3,
     color: Colors.blue,
    ),
    );
   }

  profile(){
    return Container(
      width: 140,
      height: 140,

      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset("assets/Profile/profile.png", height: 120, width: 120,),
        ),
      ),
    );
  }

   bottomCard(){
    return Container(
      width: MediaQuery.of(context).size.width/0.8,
      height: 100,
      child: Card(
        color: Colors.white,
        elevation: 10,
        child: Row(
          children: [
            Spacer(flex: 1,),
            Column(
              children: [
                cardIcons(Icon(Icons.cloud_upload_outlined,color: Colors.lightBlueAccent, size: 30, )),
                Text("Upload", style: TextStyle(color: Colors.black),),
              ],
            ),
            Spacer(flex: 1,),
            Column(
              children: [
                cardIcons(Icon(Icons.home,color: Colors.lightBlueAccent, size: 30, )),
                Text("Home", style: TextStyle(color: Colors.black),),
              ],
            ),
            Spacer(flex: 1,),
            Column(
              children: [
                cardIcons(Icon(FontAwesomeIcons.shoppingBag,color: Colors.lightBlueAccent, size: 30, )),
                Text("JOB", style: TextStyle(color: Colors.black),),
              ],
            ),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
   }

   cardIcons(Icon icon){
     return Container(
         width: 60,
         height: 60,
         child:
     CircleAvatar(
         backgroundColor: Colors.white,
         child: icon));
   }
}


class ProfileCards extends StatefulWidget {
  Icon icon;
  Color iconbg;
  String text;
  ProfileCards({Icon icon,Color iconbg,String text}){
    this.icon=icon;
    this.iconbg=iconbg;
    this.text=text;
  }

  @override
  _ProfileCardsState createState() => _ProfileCardsState();
}

class _ProfileCardsState extends State<ProfileCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      height: 80,
      child: profileCard(),
    );
  }
  profileCard(){
    return Card(
      color: Colors.white60,
      child: Row(
        children: [

          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
            decoration:  BoxDecoration(
              color:widget.iconbg,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: widget.icon,
          ),

          Text(widget.text, style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),),
          Spacer(flex: 1,),
          Icon(Icons.navigate_next, color: Colors.blue, size: 30,)
        ],
      ),
    );
  }
}

