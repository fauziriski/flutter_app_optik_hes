import 'package:flutter/material.dart';
// import 'package:flutter/src/rendering/box.dart';
// import 'package:optik_hes/detail.dart';
import 'package:optik_hes/home.dart';
// import 'package:optik_hes/home.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      // home: Scaffold(
      //     // appBar: AppBar(
      //     //   title: Text('Home'),
      //     // ),
      //     body: Container(
      //   padding: EdgeInsets.all(20),
      //   child: Column(
      //     children: [
      //       Container(
      //         child: Row(
      //           children: <Widget>[
      //             Image(
      //               image: AssetImage('assets/icons/back.png'),
      //             ),
      //             TextField(
      //               // controller: search,
      //               decoration: InputDecoration(
      //                 border: OutlineInputBorder(),
      //                 prefixIcon: Icon(Icons.email),
      //                 fillColor: Colors.red,
      //               ),
      //             )
      //           ],
      //         ),
      //         decoration: BoxDecoration(color: Colors.red),
      //       ),
      //       Container(
      //         child: Row(
      //           children: <Widget>[
      //             Image(
      //               image: AssetImage('assets/images/big_burger.png'),
      //             ),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // )
    );
  }
}
