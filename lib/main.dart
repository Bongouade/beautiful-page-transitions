import 'package:flutter/material.dart';

import 'second_page.dart';

import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text(
          "First Page",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text(
                "Droite vers Gauche",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                "Gauche vers Droite",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    curve: Curves.easeIn,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                "Haut vers Bas",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.upToDown,
                    curve: Curves.bounceInOut,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                "Bas vers Haut",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.downToUp,
                    curve: Curves.easeInOut,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text(
                "Rotation",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.rotate,
                    curve: Curves.bounceInOut,
                    child: SecondPage(),
                  ),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
