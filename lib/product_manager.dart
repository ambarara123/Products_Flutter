import 'package:flutter/material.dart';

import 'products.dart';
import 'generated/product_controller.dart';

class ProductManager extends StatefulWidget {
  final String startingproducts;

  ProductManager({this.startingproducts}){
    print("project manager class");
  }


  @override
  State<StatefulWidget> createState() {
    return new _Manager();
  }
}
class _Manager extends State<ProductManager>{
  List<String> products = [];

  @override
  void initState() {
    if(widget.startingproducts!= null){
      products.add(widget.startingproducts);
    }

       super.initState();
  }

  void _addProduct(String product){
    setState(() {
      products.add(product);
    });

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
        margin: new EdgeInsets.all(10.0
        ),
        child:
        ProductController(_addProduct)

    ),Expanded(child: new Products(products))]);
  }

}