import 'package:flutter/material.dart';

class CreateProductPage extends StatefulWidget {
  final Function addProduct;

  CreateProductPage(this.addProduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<CreateProductPage> {
  String titlevalue = '';
  String descriptionValue = '';
  double priceValue = 0.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'product title'),
            onChanged: (String value) {
              setState(() {
                titlevalue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'product description'),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'product price'),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
          ),

          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            child: Text(
              'save',
            ),
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': titlevalue,
                'description': descriptionValue,
                'price': priceValue,
                'image': 'assets/food.jpg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/products');
            },
          )
        ],
      ),
    );
  }
}
