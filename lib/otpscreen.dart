import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100, left: 20),
              child: Text('OTP',
              style: TextStyle(
                fontFamily: 'Montserrat-Bold',
                fontSize: 20,
                color: Colors.black,
              ),),
            )
          ],
        ),
      ),
    );
  }
}