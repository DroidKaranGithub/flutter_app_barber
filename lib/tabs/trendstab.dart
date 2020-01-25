import 'package:flutter/material.dart';

class TrendsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabTrends();
  }
}


class TabTrends extends StatefulWidget {
  @override
  _TabTrendsState createState() => _TabTrendsState();
}

class _TabTrendsState extends State<TabTrends> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
    );
  }
}