import '../commonFunctions.dart' as CommonFunctions;

class User {
  final int index;
  final String fname;
  final String lname;
  final String email;
  final String phone;
  final String pictureSmall;
  final String pictureLarge;
  final String gender;
  final String dob;

  User({this.index,this.fname,this.lname,this.email,this.phone,this.pictureSmall,this.pictureLarge,this.gender,this.dob});

  String fullName(){
    return CommonFunctions.capitalize(this.fname) + " " + CommonFunctions.capitalize(this.lname);
  }
}