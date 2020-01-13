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
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontFamily: 'Montserrat-Medium');
  static const List<Widget> widgetOption = <Widget>[
   Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Saloon',
      style: optionStyle,
    ),
    Text(
      'Index 2: Trends',
      style: optionStyle,
    ),
    Text(
      'Index 3: Offers',
      style: optionStyle,
    ),
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
        body: Center(
          child: widgetOption.elementAt(selectedIndex),
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
