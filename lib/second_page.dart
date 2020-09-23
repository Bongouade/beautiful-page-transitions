import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Second Page",
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
            Text(
              "SECOND PAGE",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
              child: Text(
                "Come Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
