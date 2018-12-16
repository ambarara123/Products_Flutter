import 'package:flutter/material.dart';
import '../product_manager.dart';

class HomePage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("App bar"
        )
        ,)
      ,body: new ProductManager(
    ),


    );
  }


}