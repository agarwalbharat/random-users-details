import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:random_users/models/user.model.dart';

import '../enums.dart';



class UserState with ChangeNotifier{
  List<User> users = [];
  User _currentSelected;
  viewState _state = viewState.IsLoading;
  viewState get state =>_state;
  User get currentSelected => _currentSelected;
  set currentSelected(User curr){
    _currentSelected = curr;
  }

  UserState(){loadData();}

  void setState(viewState currentState){
    _state = currentState;
    notifyListeners();
  }

  Future<void> _userDetails() async {
    if (users.length == 0) {
      var dataFromURL = await http.get("https://randomuser.me/api/?results=20");
      var jsonData = json.decode(dataFromURL.body);
      int index = 0;
      for (var user in jsonData['results']) {
        User data = User(
          index: index,
          email: user['email'],
          fname: user['name']['first'],
          lname: user['name']['last'],
          phone: user['phone'],
          pictureLarge: user['picture']['large'],
          pictureSmall: user['picture']['medium'],
          gender: user['gender'],
          dob: user['dob']['date'],
        );
        users.add(data);
        index++;
      }
    }
  }

  loadData() async {
    setState(viewState.IsLoading);
    await _userDetails();
    setState(viewState.Done);
  }
}
