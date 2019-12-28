// To Capitalize first word
String capitalize(String s) {
  return s[0].toUpperCase() + s.substring(1);
}

// Decides men or Women
String menOrWomen(gender) {
  String imageURL = "";
  if (gender == "male") {
    imageURL = "images/man.png";
  } else {
    imageURL = "images/women.png";
  }
  return imageURL;
}
