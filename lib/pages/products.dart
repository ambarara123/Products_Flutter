import 'package:flutter/material.dart';
import '../product_manager.dart';

class ProductsPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {


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