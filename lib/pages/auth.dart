import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AuthState();
  }
}

class _AuthState extends State<AuthPage>{
  String emailValue;
  String passwordValue;
  bool acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Login'),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: ListView(children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'email'),
              onChanged: (String value){
                setState(() {
                  emailValue = value;
                });
              },
            ),
            TextField(
              onChanged: (String value){
                setState(() {
                  passwordValue = value;
                });
              },
              obscureText: true,
              decoration: InputDecoration(labelText: 'password'),
              ),
            SwitchListTile(title: Text('Accept Terms'),
              value: acceptTerms,
              onChanged: (bool value){
              setState(() {

                acceptTerms = value;

              });
              },
            ),
            SizedBox(
              height: 10.0,
            ),

            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/products');
              },
            ),
          ]),
        ));
  }
}
