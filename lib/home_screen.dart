import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  final Function logout;
  HomeScreen(this.logout);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3A3A3A),
      appBar: AppBar(
          actions: <Widget>[
            SafeArea(
              left: true,
                right: true,
                child: Icon(Icons.send))
          ],
          elevation: 8,
          leading: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Image.asset('Assets/logo.png',
              height: 2,
              width: 2,
            ),
          ),
          backgroundColor: Colors.black,
          title: Text(
              "Memerary",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Raleway",
              fontSize: 20
            ),
          ),
        ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 25.0),
        child: Column(
          children: <Widget>[
             Center(
        child: RaisedButton(
            child: Text("Hehe Logout karna hai toh karo yaar"),
            onPressed: widget.logout),
      ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Container(
            decoration: BoxDecoration (
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(blurRadius: 50, color: Colors.grey.withOpacity(.1))
                ]
            ),
          padding: EdgeInsets.all(5),
          child: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 8),
                child: GNav(
                  gap: 8,
                  activeColor: Colors.pinkAccent,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  duration: Duration(milliseconds: 100),
                  tabBackgroundColor: Color(0xff3A3A3A),
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'MemeHub',

                    ),
                    GButton(
                      icon: LineIcons.search,
                      text: 'Search',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                    ),
                    GButton(
                      icon:LineIcons.info_circle,
                      text: 'Setting',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index){
                    setState(() {
                      _selectedIndex = index;
                    });
                  }
                ),
              )
          ),
        ),
      )
    );
  }
}
