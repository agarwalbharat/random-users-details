import 'package:flutter/material.dart';
import 'randomuser.class.dart';

class Details extends StatelessWidget {
  final User user;
  final int index;
  Details(this.user, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(user.fullName()),
        centerTitle: false,
      ),
      body: new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Stack(
              children: <Widget>[
              new Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Column(
                  children: <Widget>[
                    new Hero(
                      tag: "image$index",
                      child: CircleAvatar(
                        radius: 100.0,
                        backgroundImage: new NetworkImage(user.pictureLarge),
                      ),
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: SizedBox(
                            height: 10.0,
                            width: 500.0,
                          ),
                        ),
                      ],
                    ),
                    new Text(
                      user.fullName(),
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40.0),
                    ),
                    new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new SizedBox(
                            height: 10.0,
                            width: 500.0,
                          ),
                        )
                      ],
                    ),
                    new Text(user.email,style: new TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              elevation: 10.0,
            ),
              ],
            )
          )
        ],
      ),
    );
  }
}
