import 'package:flutter/material.dart';

import 'products.dart';
import 'generated/product_controller.dart';

class ProductManager extends StatefulWidget {
  final Map<String,String> startingproducts;

  ProductManager({this.startingproducts}){
    print("project manager class");
  }


  @override
  State<StatefulWidget> createState() {
    return new _Manager();
  }
}
class _Manager extends State<ProductManager>{
  List<Map<String,String>> products = [];

  @override
  void initState() {
    if(widget.startingproducts!= null){
      products.add(widget.startingproducts);
    }

       super.initState();
  }

  void _addProduct(Map<String, String> product){
    setState(() {
      products.add(product);
    });

  }

  void _deleteProduct(int index){
    setState(() {
      products.removeAt(index);
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

    ),Expanded(child: new Products(products,deleteProducts: _deleteProduct))]);
  }

}