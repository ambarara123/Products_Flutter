import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProducts;


  ProductAdminPage(this.addProduct, this.deleteProducts);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose '),
              ),
              ListTile(
                title: Text('Products Page'),
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/products',
                  );
                },
              )
            ],
          ),
        ),
        appBar: new AppBar(
          title: new Text('Login'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Create Product',
                icon: Icon(Icons.create),
              ),
              Tab(
                icon: Icon(Icons.list),
                text: 'My Products',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[CreateProductPage(addProduct), ProductListPage()],
        ),
      ),
    );
  }
}
