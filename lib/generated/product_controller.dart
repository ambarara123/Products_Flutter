import 'package:flutter/material.dart';

class ProductController extends StatelessWidget{
  final Function addProduct;

  ProductController(this.addProduct);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: (){
          addProduct("New Advance products");
      },
      child: new Text("Add Product"
      ),
    );
  }

}