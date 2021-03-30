class Validation_Maxion{
  String EmailValidation(String value){
    Pattern pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = new RegExp(pattern);
       if(value.isEmpty || value==null){
         return "The Email Could not Empity";
       }
       else if(!regex.hasMatch(value)){
         return "Invalid Email Address";
       }

    }
    String PasswordValidation(String val){
    Pattern pattern=r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$";
    RegExp regExp=new RegExp(pattern);
    if(val.isEmpty || val==null){
      return "The passowrd not Empity";
      }
    else if(!regExp.hasMatch(val)){
      return "The Password Atleast One Uper Case Character" + "\n"
          + "The length of password not be Less than 8";
    }
  }

  String NameValidation(String val){
    Pattern pattern=r"[a-zA-Z][a-zA-Z ]{2,}";
    Pattern patner2=r"^[0-9]+$";
    RegExp regExp=new RegExp(pattern);
    RegExp regExp2=new RegExp(patner2);
    if(val.isEmpty || val==null){
      return "The Name not Empity";
    }
    else if(!regExp.hasMatch(val)){
      return "The Name Character Must be Greater than 3";
    }
    else if(regExp2.hasMatch(val)){
      return "The name Cannot Have nay number";
    }
    return null;
  }

  String PhoneNumValidation(String val){
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if(val.isEmpty || val==null){
      return "The Name not Empity";
    }
    else  if(!regExp.hasMatch(val)){
      return "Invalid Phone number";
    }

  }

}