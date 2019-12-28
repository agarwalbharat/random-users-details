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



// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Random Users"),
//         centerTitle: false,
//       ),
//       body: new Container(
//         child: new FutureBuilder(
//           future: userDetails(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.data == null) {
//               return new Center(
//                 child: new CircularProgressIndicator(),
//               );
//             } else {
//               return ListView.builder(
//                 itemCount: snapshot.data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return new ListTile(
//                     leading: new Hero(
//                       tag: "image$index",
//                       child: CircleAvatar(
//                         backgroundImage:
//                             new NetworkImage(snapshot.data[index].pictureSmall),
//                       ),
//                     ),
//                     title: new Text(
//                       capitalize(snapshot.data[index].fname) +
//                           " " +
//                           capitalize(snapshot.data[index].lname),
//                       style: new TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: new Text(snapshot.data[index].email),
//                     trailing: new SizedBox(
//                       height: 20.0,
//                       child: new Image.asset(menOrWomen(snapshot.data[index].gender)),
//                     ),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         new MaterialPageRoute(
//                           builder: (context) =>
//                               Details(snapshot.data[index], index),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         tooltip: "Reload",
//         child: new Icon(Icons.refresh),
//         onPressed: () {
//           _reload();
//         },
//       ),
//     );
//   }
// }
