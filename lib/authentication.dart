import 'package:flutter/material.dart';
import 'package:Memerary/login_page.dart';
// Login Logout Toggle , Give a state to this widget .
class Authentication  extends StatelessWidget {
  //create a function which will call login() when jwt token in successfully recieved.
  //set JWT to a persistent data storage
  final Function login;
  Authentication(this.login);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("log in!"),onPressed: login,);
  }
}
