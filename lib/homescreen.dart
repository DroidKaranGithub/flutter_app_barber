import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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

  int cIndex = 0;

  void incrementTab(index) {
    setState(() {
      cIndex = index;
      if(cIndex == 0){
        Text('Home');
      }else if(cIndex == 1){
        Text('Saloon');
      }else if(cIndex == 2){
        Text('Trends');
      }else if(cIndex == 3){
        Text('Offers');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange[800]),
      home: Scaffold(
        bottomNavigationBar: DefaultTabController(
          length: 4,
          child: BottomNavigationBar(
            currentIndex:  cIndex,
            type: BottomNavigationBarType.fixed,
            items:<BottomNavigationBarItem> [
              BottomNavigationBarItem(
                icon: Image.asset('images/img_home_tab.png',
                height: 30,
                width: 30,),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/img_saloon_list_tab.png',
                height: 30,
                width: 30,),
                title: Text('Saloon'),
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/img_trends_tab.png',
                height: 30,
                width: 30,),
                title: Text('Trends'),
              ),
              BottomNavigationBarItem(
                icon: Image.asset('images/img_offers_tab.png',
                height: 30,
                width: 30,),
                title: Text('Offers'),
              ),
            ],
            onTap: (index){
              incrementTab(index);
            },
          ),
        )
        ),
    );
  }
}

enum Tab {
  TAB1,
  TAB2,
  TAB3,
  TAB4,
}

