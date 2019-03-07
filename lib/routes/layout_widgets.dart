import 'package:flutter/material.dart';

class LayoutWidgets extends StatefulWidget {
  LayoutWidgets({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LayoutWidgetsState createState() => _LayoutWidgetsState();
}

class _LayoutWidgetsState extends State<LayoutWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            "布局",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
