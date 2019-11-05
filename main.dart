import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:my_app/Gmail.dart';
//import 'package:my_app/Gmail.dart' as prefix0;
import 'package:my_app/Homescreen.dart';
//import 'package:shared_preferences/shared_preferences.dart';

//import 'package:my_app/practise.dart';
// import 'detail_screen.dart';
// import 'home_screen.dart';
// import 'login_screen.dart';

var assetsImage = AssetImage(
    '/Users/abhineet/project/flutter_project/my_app/assets/Moscow.jpg');
var image = Image(image: assetsImage, fit: BoxFit.cover);
void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Homescreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            // Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.blue[900],
              Colors.blue[300],
              Colors.blue[600],
              Colors.indigo[200],
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
                          child: Padding(
                padding: EdgeInsets.all(1),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 100.0),
                      CircleAvatar(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/Moscow.png',
                          ),
                        ),
                        radius: 70,
                        backgroundColor: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
                          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
                    ),
                  ),
                  
                  Text(
                    "Loading...",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w200),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
