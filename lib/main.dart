import 'package:flutter/material.dart';
import 'package:new_flutter/product_manager.dart';
import 'package:flutter/rendering.dart';
import 'package:new_flutter/pages/Home.dart';

void main() {
  //debugPaintBaselinesEnabled = true;
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyAppState();
  }
}


class _MyAppState extends State<MyApp>{


  @override
  Widget build(BuildContext context) {

    return new MaterialApp(title: "My App",
      theme: ThemeData(primaryColor: Colors.deepOrange
      ),
      home: HomePage(),
    );

  }


}