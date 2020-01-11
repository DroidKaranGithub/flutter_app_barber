
import 'package:flutter/material.dart';
import 'package:flutter_app_barber/otpscreen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
          margin: EdgeInsets.only(top: 100, right: 100, left: 100),
          child: Image(
            image: AssetImage('images/logo.png'),
          ),
        ),
        Row(
         children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100, left: 20),
          child: Text('Hello there',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
        )
         ],
        ),
        Row(
         children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
          child: Text('Welcome to Barber',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          
        )
         ],
        ),
        Row(
         children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
          child: Text('Please enter mobile number to sign in',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal
          ),
          ),
        )
         ],
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 80),
          child: TextField(
            cursorColor: Colors.orange,
              style: TextStyle(
                fontFamily: 'Montserrat-Bold',
                fontSize: 18
              ),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(      
	  borderSide: BorderSide(color: Colors.red),   
	  ),  
	  focusedBorder: UnderlineInputBorder(
	  borderSide: BorderSide(color: Colors.orange[800]),
	   ), 
                counterText: '',
                hintText: 'Enter mobile number ',
                hintStyle: TextStyle(
                fontFamily: 'Montserrat-Regular',
                ),
              ),
              maxLength: 10,
              keyboardType: TextInputType.phone,
          ),
        ),
       Container(
         margin: EdgeInsets.only(top: 80, left: 50, right: 50),
         height: 50,
         width: 140,
          child: RaisedButton(child: Text("Submit",
          style: TextStyle(
            fontFamily: 'Montserrat-SemiBold',
                fontSize: 18,
                color: Colors.white,
          ),),
          elevation: 5,
                onPressed: () {Navigator.
                push(context,MaterialPageRoute(builder: (context)=> OtpScreen()),);},
                color: Colors.orange[800],
                padding: EdgeInsets.only(right: 20, left: 20),
                shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(15.0),
        side: BorderSide(color: Colors.red)
),
              )
       )
          ],
        )
      ),
    );
  }  
  
}