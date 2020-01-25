
import 'package:flutter/material.dart';
import 'package:flutter_app_barber/homescreen.dart';

class NavigationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.orange[800]
        ),
        home: TabNavigate(),
    );

  }
}

class TabNavigate extends StatefulWidget {
  @override
  _TabNavigateState createState() => _TabNavigateState();
}

class _TabNavigateState extends State<TabNavigate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        color: Colors.orange[800],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, left: 5),
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: (){
                      Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,
                  color: Colors.white,),
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Row(
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                    minRadius: 30,
                    backgroundColor: Colors.white,
                  ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                        child: Text(
                          'Abhishek Kumar',
                          style: TextStyle(
                            fontFamily: 'Montserrat-SemiBold',
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                        ),
                        Container(
                        child: Text(
                          'jack@magespider@gmail.com',
                          style: TextStyle(
                            fontFamily: 'Montserrat-Medium',
                            fontSize: 13,
                            color: Colors.white
                          ),
                        ),
                          
                        )
                      ],
                    )
                  )
                ],
              ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text('Your Booking',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 14,
                    color: Colors.white
                  ),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Text('Trends',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 14,
                    color: Colors.white
                  ),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text('Refer and Earn',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 14,
                    color: Colors.white
                  ),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text('Support',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 14,
                    color: Colors.white
                  ),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text('About us',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 14,
                    color: Colors.white
                  ),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 20),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: <Widget>[
                      Text('Log Out',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Medium',
                    fontSize: 14,
                    color: Colors.white
                  ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward,
                    color: Colors.white,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  )
                    ],
                  )
                ),
              ),

          ],
        ),
        ),
    );
  }
}