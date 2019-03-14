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
          new Stack(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.all(0.0),
                height: MediaQuery.of(context).size.height * 0.16,
                decoration: new BoxDecoration(color: Colors.blue),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                child: Container(
                  padding: new EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.15),
                  child: new Card(
                    child: Container(
                      padding: new EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.15,
                          bottom: MediaQuery.of(context).size.height * 0.05),
                      child: new Column(
                        children: <Widget>[
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40.0),
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
                          new Text(
                            user.email,
                            style: new TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10.0,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: new Center(
                  child: new Hero(
                    tag: "image$index",
                    child: CircleAvatar(
                      radius: 100.0,
                      backgroundImage: new NetworkImage(user.pictureLarge),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
