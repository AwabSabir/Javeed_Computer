import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:javed_computer/UI/User/PhoneNumber.dart';
import 'package:javed_computer/Weights/UserWeights/RegistrationScreenWeights.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
class RegistrationScreen2 extends StatefulWidget {
  @override
  _RegistrationScreen2State createState() => _RegistrationScreen2State();
}

class _RegistrationScreen2State extends State<RegistrationScreen2> {
  final globlekey=GlobalKey<ScaffoldState>();
  String genderValue="";
  Color textColor=Colors.black;
  Color tapColor=Colors.white12;
  bool deafultVal=true;
  bool female=true;
  bool other=true;
  Color maleCard=Colors.white;
  Color femaleCard=Colors.white;
  Color otherCard=Colors.white;
  Color datePickerErrorColor=Colors.red;
  Color datePickerDefaultColor=Colors.white;
  Color notnSelectedCard=Colors.red;
  //getfetch date
  DateTime getDate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globlekey,
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
               children: [
                 Container(
                   width: 100,
                   height: 100,
                   margin: EdgeInsets.only(top: 150, bottom: 20),
                   child: CircleAvatar(
                     backgroundColor: Colors.white,
                     child: Icon(Icons.person, size: 50, color: Colors.blue,),
                   ),
                 ),
                 Text("Select you Gender", style: TextStyle(
                   color: Colors.white,
                   fontSize: 30,
                   fontFamily: 'Roboto'
                 ),),
                 Row(
                   children: [
                     Spacer(flex: 1,),
                     GestureDetector(
                       onTap: (){

                        setState(() {
                          if(deafultVal){
                            maleCard=tapColor;
                            femaleCard=Colors.white;
                            otherCard=Colors.white;
                            deafultVal=false;
                           female=true;
                           other=true;
                           _setGender("Male");
                          }
                          else{

                            maleCard=Colors.white;
                            femaleCard=Colors.white;
                            otherCard=Colors.white;
                            deafultVal=true;
                            female=true;
                            other=true;
                          }
                        });
                       },
                       child: GenderSelectCard(
                         icon: Icon(FontAwesomeIcons.male, size: 40, color:Colors.lightBlue ),
                         colorbg: maleCard,
                         text: "Male",
                         TextColor: textColor,

                       ),
                     ),
                     Spacer(flex: 1,),
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           if(female){
                             femaleCard=tapColor;
                             maleCard=Colors.white;
                             otherCard=Colors.white;
                             female=false;
                            deafultVal=true;
                            other=true;
                            _setGender("Female");
                           }
                           else{
                             otherCard=Colors.white;
                             femaleCard=Colors.white;
                             maleCard=Colors.white;
                             female=true;
                             deafultVal=true;
                             other=true;
                           }
                         });
                       },
                       child: GenderSelectCard(
                         icon: Icon(FontAwesomeIcons.female, size: 40, color:Colors.lightBlue ),
                         colorbg: femaleCard,
                         text: "Female",
                         TextColor: textColor,

                       ),
                     ),
                     Spacer(flex: 1,),
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           if(other){
                             otherCard=tapColor;
                             maleCard=Colors.white;
                             femaleCard=Colors.white;
                             female=true;
                             deafultVal=true;
                             other=false;
                             _setGender("Other");
                           }
                           else{
                             otherCard=Colors.white;
                             femaleCard=Colors.white;
                             maleCard=Colors.white;
                             female=true;
                             deafultVal=true;
                             other=true;
                           }
                         });
                       },
                       child: GenderSelectCard(
                         icon: Icon(FontAwesomeIcons.transgender, size: 40, color:Colors.lightBlue ),
                         colorbg: otherCard,
                         text: "Other",
                         TextColor: textColor,

                       ),
                     ),
                     Spacer(flex: 1,)
                   ],
                 ),
                 Text("--------------------", style: TextStyle(
                   color: Colors.white,
                   fontSize: 30,
                 ),),
                 Container(
                   margin: EdgeInsets.only(top: 20, bottom: 20),
                   child:Text("Select your Date of Birth", style: TextStyle(
                     color: Colors.white,
                     fontSize: 20,
                   ),),
                 ),
                 DateSelector(),

                 roundbtn(),

               ],
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
              setState(() {
                if(genderValue.isEmpty){
                  cardCollorChanger(notnSelectedCard);
                  globlekey.currentState.showSnackBar(snackBar("Kindly Select the Gander"));
                }
                else if(validateDob(getDate)!=null){
                  datePickerDefaultColor=datePickerErrorColor;
                  globlekey.currentState.showSnackBar(snackBar(validateDob(getDate)));
                }
                else{
                  datePickerDefaultColor=Colors.white;
                  print(getDate);
                }
              });

            },
            icon: Icon(Icons.arrow_forward, color: Colors.white, size: 30,),
          )
      ),
    );
  }

    DateSelector(){
      DateTime _selectedDate;
    return   DatePickerWidget(
        firstDate: DateTime(1947,01,01),
        looping: true,
        lastDate: DateTime(2030, 1, 1),
        initialDate: DateTime.now(),
        dateFormat: "dd-MMM-yyyy",
        locale: DatePicker.localeFromString('en'),
        onChange: (DateTime newDate, _) {
          _selectedDate=newDate;
          getDate=newDate;
        },
        pickerTheme: DateTimePickerTheme(
          itemTextStyle: TextStyle(color: datePickerDefaultColor, fontSize: 20),
          dividerColor: Colors.white,
          backgroundColor: Colors.blue,
        ),

      );
    }


  void _setGender(String value){
    setState(() {
      genderValue=value;
    });
  }

    void cardCollorChanger(Color color){
         maleCard=color;
         femaleCard=color;
         otherCard=color;
    }

  String  validateDob(DateTime dateTime){
       if(dateTime.year>DateTime.now().year){
         return "The Date of birth not Greater than Current Date";
       }
       else if(dateTime.year==DateTime.now().year &&
           dateTime.month==DateTime.now().month && dateTime.day==DateTime.now().day){
         return "The Dob Not Current Date";
       }
       else if(DateTime.now().year-dateTime.year<=8){
         return "The Date of Birth not Less than 8 Year";
       }


    }

    Widget snackBar(String val){
    return SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(val));
    }

}
