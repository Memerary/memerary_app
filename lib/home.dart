import 'package:flutter/material.dart';

//Home Page routes start here
class Home extends StatelessWidget {
  final Function logout;
  Home(this.logout);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'Assets/logo.png',
        ),
        title: const Text('MemeRary'),
        backgroundColor: Color(0x000000),
        actions: <Widget>[Image.asset('Assets/forward.png')],
      ),
      backgroundColor: Color(0x0E0E0E),
      body: Center(
        child: RaisedButton(
            child: Text("Hehe Logout karna hai toh karo yaar"),
            onPressed: logout),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
      ]),
    );
  }
}
