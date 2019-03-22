// class User {
//   final int index;
//   final String about;
//   final String name;
//   final String email;
//   final String picture;

//   User(this.index,this.about,this.name,this.email,this.picture);
// }


String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

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
    return capitalize(this.fname) + " " + capitalize(this.lname);
  }
}