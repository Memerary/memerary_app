import 'package:flutter/material.dart';
import './authentication.dart';
import './home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget { 
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // upon load fetch jwt from db and set loggedIn = 1 if jwt exist else do nothing.
  var _loggedIn = 0;
  void _login() {
    // Make the token Persistent
    setState(() {
      _loggedIn = 1;
    });
  }

  // Clear the db if _logout is invoked , yeah people will lose their chats too if they logout.
  void _logout() {
    setState(() {
      _loggedIn = 0;
    });
  }

  @override
  Widget build(BuildContext hehe) {
    return MaterialApp(
        home: _loggedIn == 0 ? Authentication(_login)
         : HomeScreen(_logout));
  }
}
