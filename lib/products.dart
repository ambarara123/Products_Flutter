import 'package:flutter/material.dart';
import 'package:new_flutter/pages/product.dart';

class Products extends StatelessWidget {
  final List<String> product;

  Products(this.product);

  Widget _buildProductItem(BuildContext context, int index) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Image.asset('assets/food.jpg'),
          new Container(
            margin: new EdgeInsets.all(5.0),
            child: new Text(product[index]),
          ),
          ButtonBar(children: <Widget>[
            FlatButton(
                child: Text("detail"),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductPage()))),
          ])
        ],
      ),
    );
  }

  Widget _buildProductCard() {
    Widget productCard;
    if (product.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: product.length,
      );
    } else {
      productCard = Center(child: Text("no product found please add some"));
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return _buildProductCard();
  }
}
