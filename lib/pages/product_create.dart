import 'package:flutter/material.dart';

class CreateProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductCreatePageState();

  }
}

class _ProductCreatePageState extends State<CreateProductPage>{
  String titlevalue = '';
  String descriptionValue = '';
  double priceValue = 0.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[TextField(
          decoration: InputDecoration(labelText: 'product title'),
          onChanged: (String value){

            setState(() {
              titlevalue = value;
            });

          },
        ),TextField(
          decoration: InputDecoration(labelText: 'product description'),

          maxLines: 4,
          onChanged: (String value){
            setState(() {
              descriptionValue = value;
            });

          },
        ),TextField(
          decoration: InputDecoration(labelText: 'product price'),

          keyboardType: TextInputType.number,
          onChanged: (String value){
            setState(() {
              priceValue = double.parse(value);
            });

          },
        ), FlatButton(
          child: Text(
        'show modal sheet',
          ),
          onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Center(
              child: Text('this is a bottom sheet'),
            );
          },
        );
          },
        )],
      ),
    );
  }
}
