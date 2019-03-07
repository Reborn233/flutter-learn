import 'package:flutter/material.dart';

class ScrollWidgets extends StatefulWidget {
  ScrollWidgets({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ScrollWidgetsState createState() => _ScrollWidgetsState();
}

class _ScrollWidgetsState extends State<ScrollWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            "可滚动",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
