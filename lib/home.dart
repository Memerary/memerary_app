import 'package:flutter/material.dart';
//Home Page routes start here
class Home  extends StatelessWidget {
  final Function logout;
  Home(this.logout);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("log out!"),onPressed: logout,);
  }
}