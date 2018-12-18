import 'package:flutter/material.dart';
import '../product_manager.dart';
import 'package:new_flutter/pages/product_admin.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function addProduct;
  final Function deleteProduct;


  ProductsPage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      endDrawer: Drawer(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(

              title: Text('Choose '),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,'/admin'
                );
              },
            )
          ],
        ),
      ),
      appBar: new AppBar(
        title: new Text("App bar"),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: new ProductManager(products,addProduct,deleteProduct),
    );
  }
}
