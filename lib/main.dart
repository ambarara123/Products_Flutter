import 'package:flutter/material.dart';
import 'package:new_flutter/product_manager.dart';
import 'package:flutter/rendering.dart';
import 'package:new_flutter/pages/products.dart';
import 'package:new_flutter/pages/auth.dart';
import './pages/product_admin.dart';
import './pages/product.dart';

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

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [] ;


  void _addProduct(Map<String, String> product){
    setState(() {
      _products.add(product);
    });

  }

  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",

      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        brightness: Brightness.light,
        //accentColor: Colors.deepPurple,
      ),
      //  home: AuthPage(),
      routes: {
        '/': (BuildContext context) => ProductsPage(_products,_addProduct,_deleteProduct),
        '/admin': (BuildContext context) => ProductAdminPage(),
      },

    onUnknownRoute: (RouteSettings settings) {
    return MaterialPageRoute(
    builder: (BuildContext context) =>
    ProductsPage(_products, _addProduct, _deleteProduct));},

      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');

        if (pathElements[0] != '') {
          return null;
        }

        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);

          return MaterialPageRoute<bool>(
            builder: (context) => ProductPage(
                  _products[index]['title'],
                  _products[index]['image'],
                ),
          );
        }
        return null;
      },
    );
  }
}
