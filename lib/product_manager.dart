import 'package:flutter/material.dart';
import 'products.dart';
import 'generated/product_controller.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function addProduct;
  final Function deleteProduct;


  ProductManager(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
        margin: new EdgeInsets.all(10.0
        ),
        child:
        ProductController(addProduct)

    ),Expanded(child: new Products(products,deleteProducts: deleteProduct))]);
  }

}