import 'package:flutter/material.dart';


class OffersTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabOffers();
  }
}


class TabOffers extends StatefulWidget {
  @override
  _TabOffersState createState() => _TabOffersState();
}

class _TabOffersState extends State<TabOffers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}