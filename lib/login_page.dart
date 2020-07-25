import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}


class _LoginPageState extends State<LoginPage> {
  List<bool> isSelected;
  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Hero(tag: 'logo',
                    child: Container(
                      child: Image.asset('Assets/logo.png'),
                      height: 100.0,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    ),
                ),
                SizedBox(),
                SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(),
                    child: Container(
                      child: Center(
                        child: Text(
                            "MemeRary",
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        elevation: 10,
                        child: MaterialButton(
                          onPressed: null,
                          minWidth: 150,
                          height: 45,
                          child: Text(
                              "LogIn",
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w200,
                              color: Color(0xff8FCFD1),
                              fontSize: 25
                            ),
                          ),
                        ),

                      ),
                      Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        elevation: 10,
                        child: MaterialButton(
                          onPressed: null,
                          minWidth: 150,
                          height: 45,
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w200,
                                color: Color(0xff8FCFD1),
                                fontSize: 25
                            ),
                          ),
                        ),

                      ),
                    ],
                  )
                ),
                SizedBox(
                  height: 20,
                ),
                Theme(
                  data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Theme(
                  data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      //Do something with the user input.
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      hintText: 'Password',
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  elevation: 10.0,
                  child: MaterialButton(
                    onPressed: null,
                    minWidth: 400,
                    height: 42.0,
                    child: Text(
                      "Log In",
                      style: TextStyle(fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                    ),
                  ),
                ) ,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



