import 'package:flutter/material.dart';
import 'package:new_flutter/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> product;

  Products(this.product);

  Widget _buildProductItem(BuildContext context, int index) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Image.asset(product[index]['image']),
          new Container(
            margin: new EdgeInsets.all(5.0),
            child: Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    product[index]['title'],
                    style: TextStyle(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Oswald'),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text(
                      '\$' + product[index]['price'].toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
                child: Text('Alandur , Chennai'),
              )),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () => Navigator.pushNamed<bool>(
                      context, '/product/' + index.toString())),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductCard() {
    Widget productCard;
    if (product.length == null) {
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
