import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_users/states/userState.dart';
import 'package:random_users/ui/homeui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserState(),
          child: MaterialApp(
        title: 'Random Users',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: Home(),
      ),
    );
  }
}