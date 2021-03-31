import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';
import 'package:webfeed/domain/media/content.dart';
class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  String _aboutText="Lorem Ipsum is simply dummy text of the printing "
      "and typesetting industry. Lorem Ipsum has been the industry's "
      "standard dummy text ever since the 1500s, when an unknown printer "
      "took a galley of type and scrambled it to make a type specimen"
      " book. It has survived not only five centuries, but also the leap "
      "into electronic typesetting, remaining essentially unchanged. It "
      "was popularised in the 1960s with the release of Letraset sheets "
      "containing Lorem Ipsum passages, and more recently with desktop "
      "publishing software like Aldus PageMaker including versions "
      "of Lorem Ipsum.";
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white60,size: 20,),
        ),
        automaticallyImplyLeading: true,
        title: Text("About Us", style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontFamily: 'Roboto'
        ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 150,
                height: 60,
                child: Image.asset("assets/colortext.png"),
              ),
            ),
            TextAbout(),
            setVersion(),
            OwnerDeatil(),

          ],
        ),
      ),
    );
  }

  TextAbout(){
    return Container(
      height: MediaQuery.of(context).size.height/2,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius:BorderRadius.circular(20)
      ),
      child:Text(
        _aboutText,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          inherit: true,
          fontSize: 20
        ),
      )
    );
  }

  Widget setVersion(){
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: 50,
      margin: EdgeInsets.only(top: 5, bottom: 10),
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        color: Colors.pinkAccent.withOpacity(0.5),
        child:Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text("Version 1.0.2", style: TextStyle(
                  color: Colors.white
              ),),
            ],
          ),
        )
      ),
    );
  }

    OwnerDeatil(){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/3,
        color: Colors.amberAccent,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _owenerCard(),
            _owenerCard(),
            _owenerCard(),
          ],
        )
      );
    }
    _owenerCard(){
    return Container(
      width: 180,
      height:  300,
      margin: EdgeInsets.only(bottom: 40),
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Image.asset("assets/Profile/grpic.jpg",
                 height: 150,
                 width: 150,),
             ),
           Card(
             color: Colors.blue,
             child: Text(" Gulam Rasool ", style: TextStyle(
               color: Colors.white
             ),),
           ),
            Text("CEO: Javed Computer", style: TextStyle(
              color: Colors.brown,
            ),)
          ],
        ),
      ),
    );

    }
}
