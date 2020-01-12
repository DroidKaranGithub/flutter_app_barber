import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_barber/homescreen.dart';
import 'package:pin_view/pin_view.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Timer timer;
  int _start = 30;
  void starTimer() {
    const oneSec = const Duration(seconds: 1);
    timer = Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              if (_start < 1) {
                timer.cancel();
              } else {
                _start = _start - 1;
              }
            }));
  }
  void homeScreen(){
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>HomeScreen()));
  }
  @override
  void initState() {
    super.initState();
    starTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.orange[800], cursorColor: Colors.orange[800]),
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Flexible(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 100, left: 20),
                        child: Text(
                          'OTP',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Bold', fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                        // padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: PinView(
                            count: 6, // count of the fields, excluding dashes
                            autoFocusFirstField: false,
                            // sms: SmsListener (
                            //   from: "6505551212",
                            //   formatBody: (String body){
                            //     // incoming message type
                            //     // from: "6505551212"
                            //     // body: "Your verification code is: 123-456"
                            //     // with this function, we format body to only contain
                            //     // the pin itself
                            //     String codeRaw = body.split(": ")[1];
                            //     List<String> code = codeRaw.split("-");
                            //     return code.join();
                            //   }
                            // ),
                            submit: (String pin) {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                        title:
                                            Text("Pin received successfully."),
                                        content: Text("Entered pin is: $pin"));
                                  });
                            } // gets triggered when all the fields are filled
                            ),
                      ),
                      Container(
                        alignment: Alignment(1, 0),
                        margin: EdgeInsets.only(top: 10, right: 20),
                        child: Text(
                          "00:$_start",
                          style: TextStyle(
                            fontFamily: 'Montserrat-Medium',
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.only(top: 200, left: 20, right: 20),
                        child: Text(
                          'Resend',
                          style: TextStyle(
                            fontFamily: 'Montserrat-Medium',
                            fontSize: 18,
                            color: Colors.orange[800],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(top: 80),
                              height: 50,
                              width: 140,
                              child: RaisedButton(
                                child: Text(
                                  "Submit",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat-SemiBold',
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                elevation: 5,
                                onPressed: () {
                                  homeScreen();
                                },
                                color: Colors.orange[800],
                                padding: EdgeInsets.only(right: 20, left: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0),
                                    side: BorderSide(color: Colors.red)),
                              ))
                        ],
                      )
                    ],
                  ))
                ],
              ),
            )));
  }
}
