

import 'package:flutter/material.dart';
import 'package:flutter_app_barber/loginscreen.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        new Duration(seconds: 3),
        () { Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
        });
            
  }
  @override
  Widget build(BuildContext context) {
   return Container(
       color: Colors.white,
       child: Center(
         child: Container(
           margin: EdgeInsets.all(50),
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('images/logo.png')
             )
           ),
         ),
       ),
      );
  }
   
    }
  // class Login extends StatelessWidget {
  //   @override
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       home: LoginScreen(),
  //     );
  //   }
  // }