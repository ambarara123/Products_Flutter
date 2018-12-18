import 'package:flutter/material.dart';
import 'package:new_flutter/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> product ;
  final Function deleteProducts;

  Products(this.product, {this.deleteProducts});

  Widget _buildProductItem(BuildContext context, int index) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Image.asset(product[index]['image']),
          new Container(
            margin: new EdgeInsets.all(5.0),
            child: new Text(product[index]['title']),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
            FlatButton(
              child: Text('Details'),
              onPressed: () => Navigator
                  .pushNamed<bool>(
                  context, '/product/' + index.toString())
                  .then((bool value) {
                if (value) {
                  deleteProducts(index);
                }
              }),
            ),
          ],)
        ],
      ),
    );
  }

  Widget _buildProductCard() {
    Widget productCard;
    if(product.length==null){
      print("no product found");
    }
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
