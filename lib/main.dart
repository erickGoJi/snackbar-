import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: MySnackBar(),
  ));
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Snack Bar demo"),
      ),
      body: SnackBarPage(),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          onPressed: (){
            final snackBar = SnackBar(
              content: Text('Yay! A SnackBar!'),
              action: SnackBarAction(label: 'Undo', onPressed: (){},),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 30),
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
        child: Text('Show SnackBar'),
      ),
    );
  }
}

