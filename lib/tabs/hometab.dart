import 'package:flutter/material.dart';


class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabHome();
  }
}


class TabHome extends StatefulWidget {
  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[300],
    );
  }
}