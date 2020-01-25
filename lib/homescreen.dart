import 'package:flutter/material.dart';
import 'package:flutter_app_barber/tabs/booktab.dart';
import 'package:flutter_app_barber/tabs/hometab.dart';
import 'package:flutter_app_barber/tabs/navigationtab.dart';
import 'package:flutter_app_barber/tabs/offerstab.dart';
import 'package:flutter_app_barber/tabs/trendstab.dart';

import 'common/sliderightroute.dart';

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
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontFamily: 'Montserrat-Medium');
    List<Widget> widgetOption = [
   HomeTab(),
   BookTab(),
   TrendsTab(),
   OffersTab()

  ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orange[800]),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context){
              return IconButton(
                icon: ImageIcon(
                  AssetImage('images/img_nav_open.png'),
                  color: Colors.black,
                ),
                onPressed: () {
                Navigator.push(context, SlideRightRoute(page: NavigationTab()));

            });}),
        title: Text("Flutter App"),
        actions: <Widget>[
          IconButton(
            icon: ImageIcon(
                  AssetImage('images/img_notification_false.png'),
                  color: Colors.black,
                ),
            onPressed: () {
            },
          ),
          // IconButton(
          //   icon: ImageIcon(
          //         AssetImage('images/img_home_unselect.png'),
          //         color: Colors.black,
          //       ),
          //   onPressed: () {
          //   },
          // )
        ],
      
      ),
        
        body: Center(
          child: widgetOption.elementAt(selectedIndex)
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/img_home_tab.png"),
                color: Colors.black,
              ),
              activeIcon: ImageIcon(
                AssetImage("images/img_home_tab_selected.png"),
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/img_saloon_list_tab.png"),
                color: Colors.black,
              ),
              activeIcon: ImageIcon(
                  AssetImage("images/img_saloon_list_tab_selected.png")),
              title: Text('Saloon'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/img_trends_tab.png"),
                color: Colors.black,
              ),
              activeIcon:
                  ImageIcon(AssetImage("images/img_trends_tab_selected.png")),
              title: Text('Trends'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/img_offers_tab.png"),
                color: Colors.black,
              ),
              activeIcon:
                  ImageIcon(AssetImage("images/img_offers_tab_selected.png")),
              title: Text('Offers'),
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.orange[800],
          onTap: onTapped,
        ),
      ),
    );
  }
}
