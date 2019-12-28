import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_users/states/userState.dart';
import 'package:random_users/ui/userDetails.dart';

import '../commonFunctions.dart' as CommonFunctions;
import '../enums.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Users"),
      ),
      body: Consumer<UserState>(
        builder: (context, userState, _) => (userState.state ==
                viewState.IsLoading)
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: userState.users.length,
                itemBuilder: (context, index) => ListTile(
                  leading: new Hero(
                    tag: "image$index",
                    child: CircleAvatar(
                      backgroundImage:
                          new NetworkImage(userState.users[index].pictureSmall),
                    ),
                  ),
                  title: new Text(
                    userState.users[index].fullName(),
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: new Text(userState.users[index].email),
                  trailing: new SizedBox(
                    height: 20.0,
                    child: new Image.asset(CommonFunctions.menOrWomen(
                        userState.users[index].gender)),
                  ),
                  onTap: () {
                    userState.currentSelected = userState.users[index];
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => Details(),
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
