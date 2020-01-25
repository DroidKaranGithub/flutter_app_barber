import 'package:flutter/material.dart';


class BookTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBook();
  }
}

class TabBook extends StatefulWidget {
  @override
  _TabBookState createState() => _TabBookState();
}

class _TabBookState extends State<TabBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}