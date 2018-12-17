import 'package:flutter/material.dart';
import 'package:async/async.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;


  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: (){
        print("back button is pressed");
        Navigator.pop(context,false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: new Text("DELETE"),
                  onPressed: () => Navigator.pop(context, true),
                ),
              ),
            ],
          ),
      ),
    );

  }
}
